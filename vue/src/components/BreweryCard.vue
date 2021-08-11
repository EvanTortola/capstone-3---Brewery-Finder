<template>
    <div class="hero-img vw-100% vh-100" title= "Room with metal brewery cisterns along the walls, and a few wooden benches and small wood crates">
        <div>
            <b-container fluid class="bv-row">          
                
                <b-row >
                    <b-col>
                        <!-- column intentionally empty to center cards and button -->
                    </b-col>

                    <b-col v-for="brewery in breweries" v-bind:key="brewery.breweryId" class="card">
                    <!-- can we limit the amount of breweries shown per page with a v-if and an event listener that moves you to the next page and shows the next 3 breweries? -->                    
                        <b-card tag="article"  class="mb-2">
                            <router-link :to="{name: 'Brewery', params: {breweryId: brewery.breweryId} }">

                                
                                <h4 class="card-title">{{ brewery.breweryName }}</h4>
                                <b-card-text>
                                    {{ brewery.breweryCity }}
                                </b-card-text>
                                <img :src=" brewery.image " img-bottom class="card-img" />
                                    
                            </router-link>
                        </b-card>                    
                    </b-col>

                    <b-col></b-col>
                    <b-col>
                        <!-- for the next button component -->
                    </b-col>
                </b-row>
            </b-container>
        </div>
    </div>  
</template>

<script>
import breweryService from '../services/BreweryService';


export default {
    name: 'brewery-card',
    props: {

    },
    methods: {
     
    },

    data() {
        return {
            breweries: [],
            breweryUser: {
                breweryId: "",
                userId: ""
            }
            
        }
    },
    created() {
        breweryService.getBreweries(this.$route.params.breweryId).then(response => {
            this.breweries = response.data;
        })
    },
   

}
</script>

<style>

    .welcome-text {
      padding-top: 50px;
      color: white;
    }
    
    .btn-circle.btn-xl {
      width: 180px;
      height: 180px;
      padding: 10px 16px;
      border-radius: 90px;
      font-size: 12px;
      text-align: center;
    }

    .card {
      height: 20rem;;
      margin: 7% .5%;
      
    }

    .card-body {
        margin: 1%
    }
    
    .mb-2 {
        /* margin-top: 20px; */
        /* margin-bottom: 100px;  */
    }

    .card-img {
      max-width: 180px;
      max-height: 100px 
      
    
    }

    


</style> 