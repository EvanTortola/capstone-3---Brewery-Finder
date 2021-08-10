<template>
    <div class="nav">
        <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;&nbsp;
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>&nbsp;&nbsp;
      <router-link v-bind:to="{ name: 'login' }" v-if="$store.state.token == ''">Login</router-link>&nbsp;&nbsp;
      <router-link v-bind:to="{name: 'update', params: {userId: this.$store.state.user.id} }" v-if="$store.state.token != ''">Updates</router-link>
      
    </div>
</template>

<script>

    
    export default {
    

}
</script>

<style>
.nav {
    display: flex;

    justify-content: space-around;
}
</style>