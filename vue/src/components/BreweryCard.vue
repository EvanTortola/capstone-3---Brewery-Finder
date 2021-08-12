<template>
    <div class="hero-img vw-100% vh-100" title= "Room with metal brewery cisterns along the walls, and a few wooden benches and small wood crates">
        <div>
            <b-container fluid class="bv-row">          
                
                <b-row >
                    <b-col>
                        <!-- column intentionally empty to center cards and button -->
                    </b-col>

                    <b-col v-for="brewery in breweries" v-bind:key="brewery.breweryId" class="card text-center">
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

                    <b-col>
                        <button type="button" class="btn btn-warning btn-circle btn-xl">
                        <svg xmlns="http://www.w3.org/2000/svg" width="120" height="120" fill="white" class="bi bi-chevron-right" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
                        </svg>
                        </button>
                    </b-col>
                    <b-col>
                        
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
    
    .btn-circle {
        width: 180px;
        height: 180px;
        padding: 10px 16px;
        margin: 70% 0 0 20%;

        border-radius: 90px;
        font-size: 12px;
        text-align: center;
    }

    .btn-xl {
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