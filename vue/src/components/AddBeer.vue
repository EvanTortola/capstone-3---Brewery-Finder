<template>
<div>
    <h1>Add New Beer</h1>
  <form v-on:submit.prevent="submitForm" class="breweryForm">
    <div class="status-message error" v-show="errorMsg !== ''">{{errorMsg}}</div>
       <div class="form-group">
            <label for="beerName"> Beer Name:</label>
            <input id="beerName" type="text" class="form-control" v-model="beer.beerName" autocomplete="off" />

            <label for="beerType">Beer Type:</label>
            <input id="type" type="text" class="form-control" v-model="beer.beerType">

            <label for="beerDescription">Beer Description:</label>
            <input id="beerDescription" type="text" class="form-control" v-model="beer.beerDescription"> 

            <label for="abv">ABV:</label>
            <input id="abv" type="text" class="form-control" v-model="beer.abv">

            <label for="image">Image URL:</label>
            <input id="image" type="text" name="img" accept="image/*" class="form-control" v-model="beer.image">  

        </div>
    <button class="btn btn-submit">Submit</button>
    <button class="btn btn-cancel" v-on:click.prevent="cancelForm" type="cancel">Cancel</button>
  </form>
</div>
  
</template>

<script>
import beerService from "../services/BeerService";
export default {
    name: "add-beer",
    props: {
        breweryId: {
            type: Number,
            default: 0
        }
    },
    data() {
        return{
            beer: {
                beerName: "",
                beerType: "",
                beerDescription:"",
                abv: "",
                image: "",
            },
            errorMsg: ""
        };
    },
    methods: {
        submitForm(){
            const newBeer = {
                breweryId: Number(this.$route.params.breweryId),
                beerName: this.beer.beerName,
                beerType: this.beer.beerType,
                beerDescription: this.beer.beerDescription,
                abv: this.beer.abv,
                image: this.beer.image
               
            };

            if (this.name != '') {
                beerService
                    .addBeer(newBeer)
                    .then (response => {
                        if (response.status === 201) {
                            this.$router.push(`/breweries/${this.$route.params.breweryId}`);
                        }
                    })
                    .catch(error => {
                        this.handleErrorResponse(error, " adding");
                    });
            } else {
                newBeer.breweryId = this.$route.params.breweryId;
                newBeer.beerName = this.beer.beerName;
                newBeer.beerType = this.beer.beerType;
                newBeer.beerDescription = this.beer.beerDescription;
                newBeer.abv = this.beer.abv;
                newBeer.image = this.beer.image
              
                beerService
                    .updateBeer(newBeer)
                    .then(response => {
                        if (response.status === 200) {
                            this.$router.push(`/breweries/${newBeer.breweryId}`)
                        }
                    })
                    .catch(error => {
                        this.handleErrorResponse(error, "updating"); 
                    });
            }
        },
        cancelForm() {
            this.$router.push(`/breweries/${this.$route.params.breweryId}`);
        },
        handleErrorResponse(error, verb) {
            if(error.response) {
                this.errorMsg = 
                "Error" + verb + " beer. Response received was '" +
                error.response.statusText +
                "'.";
            } else if (error.request) {
                this.errorMsg = 
                "Error" + verb + " beer. Server could not be reached.";

            } else {
                this.errorMsg = 
                "Error " + verb + " beer. Request could not be created.";
            }
        }
    },
    created() {
        if (this.beerId != 0) {
            beerService
            .getBeer(this.beerId)
            .then(response => {
                this.beer = response.data;
            })
            .catch(error => {
                if (error.response && error.response.status === 404) {
                    alert(
                        "Beer not available. This beer may have been deleted or you have entered an invalid beer ID."
                    );
                    this.$router.push("/");
                }
            });
        }
    }

};
</script>

<style>

</style>