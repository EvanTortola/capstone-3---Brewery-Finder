<template>
    <div class="nav">
        
        <ul class="nav-ul">
            <li class="nav-li ">
                <img src="..\assets\img\LogomarkSm.png" alt="Brew Spot Logo">
            </li>
            <li class="nav-li">
                <router-link v-bind:to="{ name: 'home' }" class="nav-route-link">Home</router-link>
            </li>

            <li class="nav-li">
                <router-link v-bind:to="{name: 'update', params: {userId: this.$store.state.user.id} }" v-if="$store.state.token != ''" class="nav-route-link">Updates</router-link>
            </li>

            <li class="nav-li-float-right">
                <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''" class="nav-route-link">Logout</router-link>
            </li>

            <li class="nav-li-float-right">
                <router-link v-bind:to="{ name: 'login' }" v-if="$store.state.token == ''" class="nav-route-link">Login</router-link>
            </li>
        </ul>
        <!-- <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;&nbsp;
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>&nbsp;&nbsp;
      <router-link v-bind:to="{ name: 'login' }" v-if="$store.state.token == ''">Login</router-link>&nbsp;&nbsp;
      <router-link v-bind:to="{name: 'update', params: {userId: this.$store.state.user.id} }" v-if="$store.state.token != ''">Updates</router-link> -->
      
    </div>
</template>

<script>    
    export default {
    

}
</script>

<style>
.nav {
    justify-content: flex-start;
    align-content: center;
}

.nav-ul {
    display: flex;
    align-content: center;

    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    width: 100%;

    background-color: rgb(60, 129, 0);
}

.logo {
    

}

.nav-li {    
    border-right: 1px solid rgb(192, 194, 92);
}

.nav-route-link {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;

}

.nav-li-float-right {
    align-content: flex-end;
}

.nav-route-link:hover {
    background-color: rgb(192, 194, 92);
}
</style>