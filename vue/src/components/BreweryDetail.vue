<template>
    <div>
        <h1 class="name"> {{ brewery.breweryName }} </h1>
        <p class="history"> {{ brewery.history }}</p>
        <p class="address"> {{ brewery.breweryAddress }}</p>
        <p class="city"> {{ brewery.breweryCity }}</p>
        <p class="state">{{ brewery.breweryState }}</p>
        <p class="zip">{{ brewery.zipCode }}</p>
        <p class="hourOfOpp">{{ brewery.hoursOfOperation }}</p>
        <p class="phone"> {{ brewery.phoneNumber}}</p>
        <img :src="brewery.image" alt="" class="beerImg"> 
        <h3 class="beerTitle">Beers</h3>
        <div class="listOfBeer">
            
            <div class="beer" v-for="beer in beers" v-bind:key="beer.beerId">
               
                <h3 class="beerName" v-on:click.prevent="showInfo = true" v-bind:key="beer.beerId" >{{beer.name}}</h3>
                <div class="beerInfo" v-if="showInfo === true">
                <img :src="beer.imgUrl" alt="" class="beerImg">
                <p>{{beer.description}}</p>
                <p>{{beer.abv}}</p>
                <p>{{beer.type}}</p>
                <img :src="beer.imgUrl" alt="">
                 <!-- <router-link :to="{name: 'addReview', params: {breweryId: brewery.breweryId}}"> -->
                    <div class="addReview">
                        <!-- <button v-on:click.prevent="showForm = true" >Add Review
                        </button> -->
                        <a
                            id="show-form-button"
                            href="#"
                            v-on:click.prevent="showForm = true"
                            v-if="showForm === false"
                            >Show Form</a>
                    </div>
                    <form v-on:submit.prevent="submitForm" class="breweryForm" v-if="showForm === true">
                        <div class="status-message error" v-show="errorMsg !== ''">{{errorMsg}}</div>
                        <div class="form-group">
                            <label for="beerName"> Beer Name:</label>
                            <input id="beerName" type="text" class="form-control" v-model="review.beerName" autocomplete="off" />

                            <label for="beerName"> Beer ID:</label>
                            <input id="beerId" type="text" class="form-control" v-model="review.beerId" autocomplete="off" />

                            <label for="beerType">Experience:</label>
                            <input id="type" type="text" class="form-control" v-model="review.userExperience">

                            <label for="beerName">Time / Date:</label>
                            <input id="date" type="text" class="form-control" v-model="review.dateTime" autocomplete="off" />

                            
                            <label for="rating">Rating:</label>&nbsp;
                            <select id="rating" v-model="review.rating">
                                <option value="1">1 Pour</option>
                                <option value="2">2 Pours</option>
                                <option value="3">3 Pours</option>
                                <option value="4">4 Pours</option>
                                <option value="5">5 Pours</option>
                            </select>
                        

                        </div>
                        <button class="btn btn-submit" v-on:click.prevent="submitForm" >Submit</button>
                        <button class="btn btn-cancel" v-on:click.prevent="cancelForm" type="cancel">Cancel</button>
                    </form>
                <!-- </router-link> -->
                </div>
            </div>
        </div>
         <router-link :to="{name: 'addBeer', params: {breweryId: brewery.breweryId} }">
            <div v-if="$store.state.user.authorities[0].name == 'ROLE_BREWER'" class="addBeer">
                <button>Add Beer</button> 
            </div>   
        </router-link>
       
                
    </div>
</template>

<script>

import breweryService from "../services/BreweryService"
import beerService from "../services/BeerService"
    export default {
        name: "brewery-detail",


        methods: {
            retreiveBrewery() {
                breweryService
                    .getBreweryById(this.$route.params.breweryId)
                    .then(response => {
                        this.$store.commit("SET_CURRENT_BREWERY", response.data);
                    })
                    .catch(error => {
          if (error.response && error.response.status === 404) {
            alert(
              "Brewery not available. This brewery may have been deleted or you have entered an invalid  ID."
            );
            this.$router.push("/");
          }
        });
            },
            getBeerByBreweryId() {
                beerService
                .getBeerByBreweryId(this.$route.params.breweryId)
                .then(response => {
                    this.beers = response.data;
                })
            },
            
        },

        created() {
            this.retreiveBrewery();
            this.getBeerByBreweryId();
             
            },
           
        data() {
           return {
               beers: [],
               showInfo: false,
               showForm: false,
               review: {
                beerId: "",
                beerName: "",    
                userExperience: "",
                rating: "",
                dateTime: ""
                },
                  errorMsg: ""
           } 
        },

        computed: {
            brewery() {
             return this.$store.state.brewery;
                },
        
             beer() {
            return this.$store.state.beer;
                }
    
            }


}


</script>

<style>

div.beer {
    border-top: black;
}

.beerTitle {
    justify-content: center;
    align-content: center;
}
</style>