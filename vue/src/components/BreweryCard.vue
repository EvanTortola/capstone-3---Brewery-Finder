<template>
    <div class="hero-img vw-100% vh-100" title= "Room with metal brewery cisterns along walls, wooden benches, and small wood crates">
        <div class="transprnt-overlay-login vw-100 vh-100">
            <h1 class="text-center welcome-text-heading">     
                Browse These Fine Establishments</h1>
            <b-container fluid class="bv-row">          
                
                <b-row  >
                    <b-col>
                        <!-- column intentionally empty to center cards and button -->
                    </b-col>
                    
                    <b-col  v-for="brewery in breweries.slice(0,3)" v-bind:key="brewery.breweryId"  class="card">
                            <router-link :to="{name: 'Brewery', params: {breweryId: brewery.breweryId} }">

                                <b-row>
                                    <b-col>
                                        <h4 class="text-center card-title">{{ brewery.breweryName }}</h4>
                                        <!-- <h4 class="text center card-body"> {{ brewery.breweryCity }} </h4> -->
                                        <b-card-text class="text-center card-body">
                                            {{ brewery.breweryCity }}
                                        </b-card-text>
                                        
                                        <b-row>
                                            <b-col></b-col>
                                            <b-col cols="7">
                                                <img :src=" brewery.image " img-bottom class=" card-img" />
                                            </b-col>
                                            <b-col></b-col>

                                        </b-row>
                                    </b-col>
                                </b-row>
                                    
                            </router-link>
  
                    </b-col>

                    <b-col></b-col>

                </b-row>
                <b-row>
                    <b-col>
                        <!-- column intentionally empty to center cards and button -->
                    </b-col>
                    
                    <b-col  v-for="brewery in breweries.slice(3)" v-bind:key="brewery.breweryId"  class="card">
                    <!-- can we limit the amount of breweries shown per page with a v-if and an event listener that moves you to the next page and shows the next 3 breweries? -->                    
                        <!-- <b-card tag="article"  class="mb-2"> -->
                            <router-link :to="{name: 'Brewery', params: {breweryId: brewery.breweryId} }">

                                
                                <h4 class=" text-center card-title">{{ brewery.breweryName }}</h4>
                                <b-card-text class="text-center card-body">
                                    {{ brewery.breweryCity }} 
                                    </b-card-text>
                                <b-row>
                                    <b-col></b-col>
                                    <b-col cols="8">
                                        <img :src=" brewery.image " img-bottom class=" card-img" />
                                    </b-col>
                                    <b-col></b-col>

                                </b-row>


                                    
                            </router-link>
                        <!-- </b-card>                     -->
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
    first3: true,
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



    .welcome-text-heading {
        padding-top: 50px;
        font-size: 50px;
        font-weight: bold;

        color: rgb(18, 131, 37);
    }

    .welcome-img {
        /* height: 30px; */
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
      height: 300px;
      width: 100px;
      margin: 7% .5%;
      border-radius: 5px;

      justify-content: center;
      align-content: center;

      background-color:rgb(219, 164, 91);
    }

    .card-body {
        /* margin: 1%; */
        color: rgb(40, 70, 45);

        font-size: 20px;
        text-decoration: none;        
    }

    .card-img {
      max-width: 200px;
      max-height: 100px;  
    }
    .card-title {
        color: rgb(40, 70, 45);
    }

</style> 