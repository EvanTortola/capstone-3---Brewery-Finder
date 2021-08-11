<template>
    <div class="hero-img vw-100% vh-100">
        <b-container fluid class="b-row transprnt-overlay vw-100% vh-100">
            <b-row>
                <b-col></b-col>
                <b-col cols= "8">
                    <form v-on:submit.prevent="submitForm" class="updatedBrewery">
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
                        <button class="btn btn-submit" v-on:click.prevent="updateForm">Update Existing Brewery</button>
                        <button class="btn btn-cancel" v-on:click.prevent="cancelForm" type="cancel">Cancel</button>
                        
                    </form>
                </b-col>
                <b-col></b-col>
            </b-row>
        </b-container>
    </div>
</template>

<script>
import breweryService from '../services/BreweryService'
export default {

    name: "update-brewery",

    data() {
        return {
            brewery: {
                breweryId: "",
                history: "",
                breweryAddress: "",
                breweryCity: "",
                breweryState: "",
                zipCode: "",
                hoursOfOperation: "",
                phoneNumber: "",
                image: ""
            }
        }
    },

    methods: {
        
        updateForm() {
            const updatedBrewery = {
                breweryId: this.$route.params.breweryId,
                breweryName: this.brewery.breweryName,
                history: this.brewery.history,
                breweryAddress: this.brewery.breweryAddress,
                breweryCity: this.brewery.breweryCity,
                breweryState: this.brewery.breweryState,
                zipCode: this.brewery.zipCode,
                hoursOfOperation: this.brewery.hoursOfOperation,
                phoneNumber: this.brewery.phoneNumber,
                image: this.brewery.image
                }
                if (this.brewery.breweryName != '') {
                breweryService
                    .updateBrewery(updatedBrewery)
                    .then(response => {
                        if (response.status === 200) {
                            this.$router.push(`/`)
                        }
                    })
                    .catch(error => {
                        this.handleErrorResponse(error, "updating"); 
                    });
                }
           
             }
    }

}
</script>

<style>

</style>