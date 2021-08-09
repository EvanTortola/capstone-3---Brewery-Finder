<template>
  <div class="nav">
      <router-link v-bind:to="{name: 'addBrewery' }">Add Brewery</router-link>
    </div>
</template>

<script>
export default {
  name: 'admin-nav-bar'

}
</script>

<style>
.nav {
    display: flex;

    justify-content: space-around;
}
</style>