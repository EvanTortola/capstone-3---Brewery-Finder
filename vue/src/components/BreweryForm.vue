<template>
    <div>
        <b-container fluid class="bv-row">
                <b-row> 
                    <b-col></b-col>
                    <b-col>
                      <h1>Add Brewery</h1>
                      <form v-on:submit.prevent="submitForm" class="breweryForm">
                          <div class="status-message error" v-show="errorMsg !== ''">{{errorMsg}}</div>
                          <div class="form-group">
                            <label for="breweryName">Name:</label>
                            <input id="breweryName" type="text" class="form-control" v-model="brewery.breweryName" autocomplete="off" />
                          </div>
                          <div class="form-group">
                            <label for="history">History:</label>
                            <input id="history" type="text" class="form-control" v-model="brewery.history">
                            <label for="breweryAddress">Street:</label>
                            <input id="breweryAddress" type="text" class="form-control" v-model="brewery.breweryAddress">   
                            <label for="breweryCity">City:</label>
                            <input id="breweryCity" type="text" class="form-control" v-model="brewery.breweryCity">
                            <label for="breweryState">State:</label>
                            <input id="breweryState" type="text" class="form-control" v-model="brewery.breweryState"> 
                            <label for="zipCode">Zip Code:</label>
                            <input id="zipCode" type="text" class="form-control" v-model="brewery.zipCode">
                            <label for="hoursOfOperation">Hours of Operation:</label>
                            <input id="hoursOfOperation" type="text" class="form-control" v-model="brewery.hoursOfOperation">
                            <label for="phoneNumber">Phone Number:</label>
                            <input id="phoneNumber" type="tel" class="form-control" v-model="brewery.phoneNumber">
                            <label for="image">Image URL:</label>
                            <input id="image" type="text" name="img" accept="image/*" class="form-control" v-model="brewery.image">    
                          </div>
                          <button class="btn btn-submit" v-on:click.prevent="submitForm">Submit</button>
                          <button class="btn btn-cancel" v-on:click.prevent="cancelForm" type="cancel">Cancel</button>
                      </form>
                    </b-col>
                    <b-col></b-col>
              </b-row> 
          </b-container>
    </div>  
  </template>

<script>
import breweryService from "../services/BreweryService";
export default {
    name: "brewery-form",
    props: {
        breweryId: {
            type: Number,
            default: 0
        }
    },
    data() {
        return{
            brewery: {
                breweryName: "",
                history: "",
                breweryAddress:"",
                breweryCity: "",
                breweryState: "",
                zipCode: "",
                hoursOfOperation: "",
                phoneNumber: "",
                image: ""
            },
            errorMsg: ""
        };
    },
    methods: {
        submitForm(){
            const newBrewery = {
                breweryName: this.brewery.breweryName,
                breweryStreet: this.brewery.breweryAddress,
                breweryCity: this.brewery.breweryCity,
                breweryState: this.brewery.breweryState,
                zipCode: this.brewery.zipCode,
                phoneNumber: this.brewery.phoneNumber, 
                history: this.brewery.history,
                hoursOfOperation: this.brewery.hoursOfOperation,
              
                image: this.brewery.image
            };

            if (this.brewery.breweryName != '') {
                breweryService
                    .addBrewery(newBrewery)
                    .then (response => {
                        if (response.status === 201) {
                            this.$router.push(`/`);
                        }
                    })
                    .catch(error => {
                        this.handleErrorResponse(error, " adding");
                    });
            } 
        },

             
             
        cancelForm() {
            this.$router.push(`/`);
        },
        handleErrorResponse(error, verb) {
            if(error.response) {
                this.errorMsg = 
                "Error" + verb + " brewery. Response received was '" +
                error.response.statusText +
                "'.";
            } else if (error.request) {
                this.errorMsg = 
                "Error" + verb + " brewery. Server could not be reached.";

            } else {
                this.errorMsg = 
                "Error " + verb + " brewery. Request could not be created.";
            }
        }
    },
    created() {
        if (this.breweryId != 0) {
            breweryService
            .getBreweries(this.breweryId)
            .then(response => {
                this.brewery = response.data;
            })
            .catch(error => {
                if (error.response && error.response.status === 404) {
                    alert(
                        "Brewery not available. This brewery may have been deleted or you have entered an invalid brewery ID."
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