<template>

    <div class="webpage-base-background vh-100">
        <b-container fluid class="bv-row">
            <b-row>
                <b-col></b-col>
                <b-col>

                    <div class="beerDetail">
                        <h1 class="name text-center beer-title beer-details-heading"> {{beer.name}}</h1>
                        <p>{{beer.description}}</p>
                        <p>{{beer.type}}</p>
                        <p>{{beer.abv}}</p>
                        <img :src="beer.imgUrl" alt="Picture Of Beer" class="beer-detail-img">
                    </div> 
                    
                    <div class="listOfReviews">
                            <div v-for="review in reviews" v-bind:key="review.reviewId" class="review">
                            <!-- <h3>{{review.beerName}}</h3> -->
                            
                            <img src="../assets\img/homer_simpson.png" v-for="n in review.rating" v-bind:key="n" alt="" class="homer">
                            <p>{{review.userExperience}}</p>
                            <!-- <p>{{review.rating}} Pours</p>x -->
                        </div> 
                    </div>
                    <b-row>
                        <router-link :to="{name: 'addReview', params: {breweryId: beer.breweryId, beerId: beer.beerId, name: beer.name}}">
                            <div class="addReview">
                            <button class="btn btn-color form-detail-btns">Add Review</button>
                            <button v-on:click.prevent="deleteBeer" v-if="$store.state.user.authorities[0].name == 'ROLE_BREWER'" class="btn btn-color beer-detail-btns">Delete This Beer</button>

                            </div>
                        </router-link>

                    </b-row>
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

h1 {
align-items: center;
justify-content: center;
}

.beer-detail-heading {
  margin-top: 5%;

  color: rgb(18, 131, 37);
}

.beer-detail-img {
    max-width: 300px;
}

.beer-detail-btns {
  margin-right: 2%;
  margin-top: 1%;
}

@media only screen and (max-width:514px) {

    .beer-detail-img {
  height: 200px;

  }
}

@media only screen and (max-width:369px) {

    .beer-detail-img {
      width : 200px;
  }
}

</style>