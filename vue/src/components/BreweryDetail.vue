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

                <router-link :to="{name: 'beerDetail', params: {breweryId: brewery.breweryId, beerId: beer.beerId, name: beer.name} }">
                <h3 class="beerName">{{beer.name}}</h3>
                </router-link>
               
                <!-- <router-link :to="{name: 'addReview', params: {breweryId: brewery.breweryId, beerId: beer.beerId, name: beer.name}}">
                    <div class="addReview">
                        <button>Add Review</button>
                    </div>
                </router-link> -->
           
            </div>
        </div>
         <router-link :to="{name: 'addBeer', params: {breweryId: brewery.breweryId} }">
            <div  class="addBeer">
                <button>Add Beer</button> 
            </div>   
        </router-link>
       

        <router-link :to="{name: 'updateBrewery', params: {breweryId: brewery.breweryId} }">
        <div class="updateBrewery">
            <button>Update Existing Brewery
            </button> 
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