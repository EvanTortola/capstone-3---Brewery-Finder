<template>
  <div>
      <h1>{{beer.name}}</h1>
      <p>{{beer.description}}</p>
      <p>{{beer.type}}</p>
      <p>{{beer.abv}}</p>
      <img :src="beer.imgUrl" alt="">
        
      <router-link :to="{name: 'addReview', params: {breweryId: beer.breweryId, beerId: beer.beerId, name: beer.name}}">
        <div class="addReview">
          <button>Add Review</button>
        </div>
      </router-link>
  </div>
</template>

<script>
import beerService from "../services/BeerService"
export default {
    name: 
      "beer-detail",

    methods: {
          retreiveBeer() {
                beerService
                    .getBeerByBeerId(this.$route.params.beerId)
                    .then(response => {
                        this.$store.commit("SET_CURRENT_BEER", response.data);
                    })
                    .catch(error => {
          if (error.response && error.response.status === 404) {
            alert(
              "Beer not available. This beer may have been deleted or you have entered an invalid  ID."
            );
            this.$router.push("/");
          }
        });
            },    
            
    },
    created() {
          this.retreiveBeer();
        },
    
    data() {
      return {
        beers: []
      }
    },

    computed: {
      beer() {
        return this.$store.state.beer;
      }
    }
    
}
</script>

<style>

</style>