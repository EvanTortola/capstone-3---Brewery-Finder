<template>
    <div class="webpage-base-background vw-100% vh-100%" >
        <b-container fluid class="bv-row">
            <b-row> 
                <b-col></b-col>
                <b-col>
                    <h1 class="text-center form-heading">Add New Review</h1>
                    <form v-on:submit.prevent="submitForm" class="breweryForm">
                        <div class="status-message error" v-show="errorMsg !== ''">{{errorMsg}}</div>
                        <div class="form-group">
                       
                            <label for="beerType">Experience:</label>
                            <input id="type" type="text" class="form-control" v-model="review.userExperience">

                            <!-- <label for="beerName">Time / Date:</label>
                            <input id="date" type="text" class="form-control" v-model="review.dateTime" autocomplete="off" /> -->

                            
                            <label for="rating">Rating:</label>&nbsp;
                            <select id="rating" v-model="review.rating">
                                <option value="1">1 Pour</option>
                                <option value="2">2 Pours</option>
                                <option value="3">3 Pours</option>
                                <option value="4">4 Pours</option>
                                <option value="5">5 Pours</option>
                            </select>
                        

                        </div>
                        <button class="btn btn-submit btn-color form-detail-btns" v-on:click.prevent="submitForm" >Submit</button>
                        <button class="btn btn-cancel btn-color form-detail-btns" v-on:click.prevent="cancelForm" type="cancel">Cancel</button>
                    </form>
                </b-col> 

                <b-col></b-col>
            </b-row> 
        </b-container>
    </div>
  
</template>

<script>
import reviewService from "../services/ReviewService";
export default {
    currentdate: '',
    name: "add-review",
    props: {
        breweryId: {
            type: Number,
            default: 0
        }
    },
    data() {
        return{
            review: {
                beerId: "",
                beerName: "",    
                userExperience: "",
                rating: "",
                dateTime: ""
            },
            errorMsg: ""
        };
    },
    methods: {
        submitForm(){
            const newReview = {
                beerId: this.$route.params.beerId,
                beerName: this.$route.params.name,
                userExperience: this.review.userExperience,
                rating: this.review.rating,
                dateTime: this.getDate(),
            };

            if (this.beerId != 0) {
                reviewService
                    .addReview(newReview)
                    .then (response => {
                        if (response.status === 200) {
                            this.$router.push(`/${this.$route.params.breweryId}/${this.$route.params.beerId}/${this.$route.params.beerName}`);
                        }
                    })
                    .catch(error => {
                        this.handleErrorResponse(error, " adding");
                    });
            } else {
                newReview.breweryId = this.$route.params.breweryId;
                newReview.beerName = this.review.beerName;
                newReview.beerType = this.review.beerType;
                newReview.beerDescription = this.review.beerDescription;
                newReview.abv = this.review.abv;
                newReview.image = this.review.image
              
                reviewService
                    .updateBeer(newReview)
                    .then(response => {
                        if (response.status === 200) {
                            this.$router.push(`/breweries/${newReview.breweryId}`)
                        }
                    })
                    .catch(error => {
                        this.handleErrorResponse(error, "updating"); 
                    });
            }
        },
        cancelForm() {
            this.$router.push(`/breweries/${this.$route.params.breweryId}`);
        },
        handleErrorResponse(error, verb) {
            if(error.response) {
                this.errorMsg = 
                "Error" + verb + " beer. Response received was '" +
                error.response.statusText +
                "'.";
            } else if (error.request) {
                this.errorMsg = 
                "Error" + verb + " beer. Server could not be reached.";

            } else {
                this.errorMsg = 
                "Error " + verb + " beer. Request could not be created.";
            }
        },
        getDate() {
            var currentdate = new Date();
            currentdate.getDay() + "/" + currentdate.getMonth() 
            + "/" + currentdate.getFullYear() + "  " 
                + currentdate.getHours() + ":" 
            + currentdate.getMinutes()
            return currentdate
        }
    },
    created() {
        if (this.beerId != 0) {
            reviewService
            .getBeer(this.beerId)
            .then(response => {
                this.beer = response.data;
            })
            .catch(error => {
                if (error.response && error.response.status === 404) {
                    alert(
                        "Beer not available. This beer may have been deleted or you have entered an invalid beer ID."
                    );
                    this.$router.push("/");
                }
            });
        }
    }

};
</script>

<style>

</style>