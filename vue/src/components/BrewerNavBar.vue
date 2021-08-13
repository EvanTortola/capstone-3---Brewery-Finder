<template>
    <div class="nav">
        <ul class="nav-ul">
            <li class="nav-li">
                <router-link :to="{name: 'addBeer', params: {breweryId: this.$route.params.breweryId} }" class="nav-route-link">Add Beer</router-link>
            </li>

            <li class="nav-li">
                <router-link :to="{name: 'updateBrewery', params: {breweryId: this.$route.params.breweryId} }" class="nav-route-link">Update Brewery Info</router-link>
            </li>

            <li class="nav-li-float-right">
                <router-link v-bind:to="{ name: 'addUpdate', params:{breweryName: this.$store.state.brewery.breweryName, breweryId: this.$route.params.breweryId} }" class="nav-route-link">Post An Update</router-link>
            </li>

        </ul>
    </div>
</template>

<script>
export default {
  name: 'brewer-nav-bar'

}
</script>

<style>

.nav-ul {
    display: flex;

    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    width: 100%;

    background-color: rgb(60, 129, 0);
}

.nav-li {    
    border-right: 1px solid rgb(192, 194, 92);
}

.nav-route-link {
    display: block;
    color: rgb(219, 201, 177);
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;

}

.nav-li-float-right {
    float: right;
}

.nav-route-link:hover {
    background-color: rgb(192, 194, 92);
}
</style>