<template>
<div class="webpage-base-background vw-100% vh-100%"> 
    <b-container fluid class="bv-row transprnt-overlay vw-100% vh-100">
        <b-row>
            <b-col></b-col>
            <b-col cols="8"> 
                <h1 class=" text-center form-heading">Add New Beer</h1>


                <form v-on:submit.prevent="submitForm" class="breweryForm">
                    <div class="status-message error" v-show="errorMsg !== ''">{{errorMsg}}</div>
                    <div class="form-group form-body">
                            <label for="beerName"> Beer Name:</label>
                            <input id="beerName" type="text" class="form-control" v-model="beer.name" autocomplete="off" />

                            <label for="beerType">Beer Type:</label>
                            <input id="type" type="text" class="form-control" v-model="beer.type">

                            <label for="beerDescription">Beer Description:</label>
                            <input id="beerDescription" type="text" class="form-control" v-model="beer.description"> 

                            <label for="abv">ABV:</label>
                            <input id="abv" type="text" class="form-control" v-model="beer.abv">

                            <label for="image">Image URL:</label>
                            <input id="image" type="text" name="img" accept="image/*" class="form-control" v-model="beer.imgUrl">  

                            <label for="active">Active:</label>
                            <input id="active" type="text" name="active"  class="form-control" v-model="beer.active">  

                        </div>
                    <button class="btn btn-submit btn-color form-detail-btns" v-on:click.prevent="submitForm">Submit</button>
                    <button class="btn btn-cancel btn-color form-detail-btns" v-on:click.prevent="cancelForm" type="cancel">Cancel</button>
                </form>
            </b-col>
            <b-col></b-col>
        </b-row>  
    </b-container>
</div>
  
</template>

<script>
import beerService from "../services/BeerService";
export default {
    name: "add-beer",
    props: {
        beerId: {
            type: Number,
            default: 0
        }
    },
    data() {
        return{
            beer: {
                name: "",
                type: "",
                description:"",
                abv: "",
                imgUrl: "",
                active:""
            },
            errorMsg: ""
        };
    },
    methods: {
        submitForm(){
            const newBeer = {
                name: this.beer.name,
                type: this.beer.type,
                description: this.beer.description,
                imgUrl: this.beer.imgUrl,
                abv: this.beer.abv,
                breweryId: this.$route.params.breweryId,
                active: this.beer.active
               
            };

            if (this.beer.name != '') {
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