<template>
    <div class="webpage-base-background vw-100% vh-100%">
        <b-container fluid class="bv-row" >
            <b-row>
                <b-col></b-col>
                <b-col cols="8" >
                    <h1 class="name text-center mt-5 brewery-title"> {{ brewery.breweryName }} </h1>
                    <p class="history"> {{ brewery.history }}</p>
                    <div>
                       <b-row> 
                           <b-col cols="9">
                                <p class=" mt-5 brewery-detail-subtitle"> Located at</p>
                                <p class=" address city state zip phone hourOfOpp">{{ brewery.breweryAddress }} {{ brewery.breweryCity }}, {{ brewery.breweryState }} {{ brewery.zipCode }}  |  Phone Number: {{ brewery.phoneNumber}}</p>
                                <p class=" hourOfOpp"> Open Hours: {{ brewery.hoursOfOperation }} </p>                            
                            <b-row>
                                <b-col>
                                        <b-button href="#" variant="primary" class="like" v-on:click.prevent="likeBrewery"> 
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up-fill" viewBox="0 0 16 16">
                                                <path d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z"/>
                                            </svg>&nbsp;
                                            Like our brewery for more updates!                                            
                                        </b-button>
                                </b-col>
                            </b-row>
                                <img :src="brewery.image" alt="image inside the brewery" class="brewery-detail-img"> 
                            </b-col>
                            <b-col>
                                
                                <h3 class="beer-heading">Beer List</h3>
                                <b-row>
                                    <div>
                                        <div class="beer" v-for="beer in beers" v-bind:key="beer.beerId">

                                            <router-link :to="{name: 'beerDetail', params: {breweryId: brewery.breweryId, beerId: beer.beerId, name: beer.name} }">
                                            <h3 class="beerName list-of-beer">{{beer.name}}</h3>
                                            </router-link>                       
                                        </div>
                                    
                                    </div>
                                </b-row>

                            </b-col>
                        </b-row>                       
                    </div>

                </b-col>
                <b-col></b-col>
            </b-row>
        </b-container>        
    </div>
</template>

<script>

import breweryService from "../services/BreweryService"
import beerService from "../services/BeerService"
import updateService from '../services/UpdateService';
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

           likeBrewery() {
            // this.breweryUser.userId = this.$store.state.user.id
            const brewUser = {
                breweryId: this.$route.params.breweryId,
                userId: this.$store.state.user.id
            };
            if (this.userId != 0){
            updateService
            .likeBrewery(brewUser)
            }
        },
      
            
        },

        created() {
            this.retreiveBrewery();
            this.getBeerByBreweryId();
            this.isLoading = false;
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

.webpage-base-background {
    background-color: rgba(241, 235, 172, .5);
}

.brewery-title {
    color: rgb(18, 131, 37);

    font-size: 50px;
    font-weight: bold;
    margin: 2% 0;
}

.brewery-detail-subtitle {
    color: rgb(18, 131, 37);

    font-size: 40px;
    font-weight: bold;
}

/* .brewery-subtitle-underline {

    border-bottom: rgb(18, 131, 37);
} */

.brewery-detail-img {
    max-width: 900px;
}

.beer-heading {
    margin-top: 20%;

    color: rgb(18, 131, 37);
    font-size: 40px;
    font-weight: bold;
    /* justify-content: center;
    align-content: center; */
}

.list-of-beer {
    font-size: 20px;
    color: black;
    text-decoration: none;
}

.list-of-beer:hover{
    color:rgb(128, 128, 128);;
}

.beer {
    margin:.5%;

    border-top: black;
}
.update-brewery-btn {
    margin-top: 1%;
}

.add-beer-btn {
    margin-top: 1%
}

<<<<<<< HEAD
.beerImg {}
=======
@media only screen and (max-width:1320px) {

    .brewery-detail-img {
        max-width: 600px;
    }
}

@media only screen and (max-width:1230px) {

    .brewery-detail-img {
        max-width: 500px;
    }
}

@media only screen and (max-width:1037px) {

    .brewery-detail-img {
        max-width: 400px;
    }
}

@media only screen and (max-width:853px) {

    .brewery-detail-img {
        max-width: 300px;
    }
}

@media only screen and (max-width:514px) {

    .brewery-detail-img {
        max-width: 280px;
    }
}

@media only screen and (max-width:430px) {

    .brewery-detail-img {
        max-width: 300px;
    }

    .brewery-title {
        color: rgb(18, 131, 37);

        font-size: 30px;
        font-weight: bold;
        margin: 2% 0;
    }

    .brewery-detail-subtitle {
        color: rgb(18, 131, 37);

        font-size: 25px;
        font-weight: bold;
    }   

    .beer-heading {
        margin-top: 20%;

        color: rgb(18, 131, 37);
        font-size: 25px;
        font-weight: bold;
        /* justify-content: center;
        align-content: center; */
    }

    .list-of-beer {
        font-size: 15px;
        color: black;
        text-decoration: none;
    }
}

@media only screen and (max-width:416px) {

    .brewery-detail-img {
        max-width: 250px;
    }

    .brewery-title {
        color: rgb(18, 131, 37);

        font-size: 30px;
        font-weight: bold;
        margin: 2% 0;
    }

    .brewery-detail-subtitle {
        color: rgb(18, 131, 37);

        font-size: 25px;
        font-weight: bold;
    }   

    .beer-heading {
        margin-top: 20%;

        color: rgb(18, 131, 37);
        font-size: 25px;
        font-weight: bold;
        /* justify-content: center;
        align-content: center; */
    }

    .list-of-beer {
        font-size: 15px;
        color: black;
        text-decoration: none;
    }
}
>>>>>>> cf80b8d27905802aab1dde94e8da213f442e9810

</style>