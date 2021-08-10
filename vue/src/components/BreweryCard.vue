<template>
    <div class="hero-img vw-75 vh-100">
        <b-container fluid class="bv-row">          
            
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
import updateService from '../services/UpdateService';

export default {
    name: 'brewery-card',
    props: {

    },
    methods: {
        likeBrewery() {
            this.breweryUser.userId = this.$store.state.user.id
            const brewUser = {
                breweryId: this.brewery.breweryId,
                userId: this.$store.state.user.id
            };
            if (this.userId != 0){
            updateService
            .likeBrewery(brewUser)
            }
        }
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
        margin: 10% .5%;
    }

    .card-img {
        width: 180px;
        height: 100px 
    }

    


</style> 