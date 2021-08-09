<template>
    <div class="hero-img vw-75 vh-100">
      
      <b-container fluid class="bv-row heading"> 
        <b-row >
          <b-col>
            <h3>Welcome to Brew Spot- find your next local wateringhole, or find a new local brew! New Breweries and brews updated fresh daily!</h3>  
          </b-col>
        </b-row>         
          
        <b-row >
          <b-col>
              <!-- column intentionally empty to center cards and button -CG -->
              
          </b-col>

          <b-col v-for="brewery in breweries" v-bind:key="brewery.breweryId" class="card">
          <!-- can we limit the amount of breweries shown per page with a v-if and an event listener that moves you to the next page and shows the next 3 breweries? -CG -->  

                          
            <b-card tag="article"  class="mb-2">
              <router-link :to="{name: 'Brewery', params: {breweryId: brewery.breweryId} }">

                  
                <h4 class="card-title">{{ brewery.breweryName }}</h4>
                <b-card-text>
                    {{ brewery.breweryCity }}
                </b-card-text>
                <img :src=" brewery.image " img-bottom class="card-img" />
                  <b-button href="#" variant="primary" class="like">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                      <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                    </svg>
                  </b-button>
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
</template>






<script>
import breweryService from '../services/BreweryService';

export default {
    name: 'brewery-card',

    data() {
        return {
            breweries: []
            
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

    h3 {
      padding-top: 50px
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

    .card-img {
      width: 180px;
      height: 100px 
    }

    


</style> 