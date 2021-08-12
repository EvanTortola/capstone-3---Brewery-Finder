<template>

    <div>
        <b-container fluid class="bv-row">
            <b-row>
                <b-col></b-col>
                <b-col>
                    <div clas="beerDetail">
                    <h1>{{beer.name}}</h1>
                    <p>{{beer.description}}</p>
                    <p>{{beer.type}}</p>
                    <p>{{beer.abv}}</p>
                    <img :src="beer.imgUrl" alt="">
                    </div> 
                    
                    <div class="listOfReviews">
                    <div v-for="review in reviews" v-bind:key="review.reviewId" class="review">
                    <!-- <h3>{{review.beerName}}</h3> -->
                    
                    <img src="../assets\img/homer_simpson.png" v-for="n in review.rating" v-bind:key="n" alt="" class="homer">
                    <p>{{review.userExperience}}</p>
                    <!-- <p>{{review.rating}} Pours</p> -->
                    </div> 
                    </div>

                    <router-link :to="{name: 'addReview', params: {breweryId: beer.breweryId, beerId: beer.beerId, name: beer.name}}">
                        <div class="addReview">
                        <button>Add Review</button>
                        </div>
                    </router-link>

                    <button v-on:click.prevent="deleteBeer" v-if="$store.state.user.authorities[0].name == 'ROLE_BREWER'">Delete This Beer</button>
                </b-col>
                <b-col></b-col>
            </b-row>
        </b-container>
    </div>
</template>

<script>
import reviewService from "../services/ReviewService"
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
        
        retreiveReviews() {
          reviewService
            .getReviewByBeerId(this.$route.params.beerId)
            .then(response => {
              this.reviews = response.data
            })
        },
            
            
      deleteBeer() { 
       
         beerService.deleteBeer(this.$route.params.beerId).then(response => {
        if (response.status === 200) {
          this.$router.push(`/`);
        }
      });

    }
    },

    

    created() {
          this.retreiveBeer();
          this.retreiveReviews();
        },
    
    data() {
      return {
        beers: [],
        reviews: []
      }
    },

    computed: {
      beer() {
        return this.$store.state.beer;
      },
      review() {
        return this.$store.state.review
      }
    }
    
}
</script>

<style>
.homer {
  height: 50px;
  width: 50px;
}
.review {
  border-top: black 2px solid;
}

</style>