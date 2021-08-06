<template>
    <div>
        <h1> {{ brewery.breweryName }} </h1>
        <p> {{ brewery.history }}</p>
        <p> {{ brewery.breweryAddress }}</p>
        <p> {{ brewery.breweryCity }}</p>
        <p>{{ brewery.breweryState }}</p>
        <p>{{ brewery.zipCode }}</p>
        <p>{{ brewery.hoursOfOperation }}</p>
        <p> {{ brewery.phoneNumber}}</p>
        <img :src="brewery.image" alt=""> 
        <router-link :to="{name: 'addBeer', params: {breweryId: brewery.breweryId} }">
            <button >Add Beer
            </button>   
            </router-link>     
    </div>
</template>

<script>

import breweryService from "../services/BreweryService"
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
            }
        },

        created() {
            this.retreiveBrewery();
            },

        computed: {
            brewery() {
             return this.$store.state.brewery;
                }
            }


}


</script>

<style>

</style>