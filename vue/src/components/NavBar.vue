<template>
    <div class="nav">
        
        <ul class="nav-ul">
            <li class=" nav-li nav-skinny-logo">
                <img src="..\assets\img\LargestLogomark.jpg" alt="Brew Spot Logomark" class="nav-img">
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

.nav-img {
    margin-right: 10px;

    height: 50px
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
    align-content: flex-end;
}

.nav-route-link:hover {
    background-color: rgb(192, 194, 92);
}
@media only screen and (max-width:383px) {

    .nav-img {
        height: 0px;

        margin: 20px;
        
    }
    .nav-skinny-logo {
        background-image: url("../assets/img/LogoSm.png");
        background-repeat: no-repeat;
    }
}

</style>