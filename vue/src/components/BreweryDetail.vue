<template>
    <div>
        <h1> {{ brewery.brewery_name }} </h1>
        <p> {{ brewery.history }}</p>
        <p> {{ brewery.street }}</p>
        <p> {{ brewery.city }}</p>
        <p>{{ brewery.state }}</p>
        <p>{{ brewery.zip_code }}</p>
        <p>{{ brewery.hours_of_operation }}</p>
        <img :src="brewery.image" alt="">        
    </div>
</template>

<script>

// import BreweryService from "../services/BreweryService"
    export default {

}
</script>

<style>

</style>