<template>

  <div class="hero-img vw-100 vh-100">  

    <b-container fluid class="bv-row">
     
      <div id="login" class="text-center"> 
        <form class="form-signin" @submit.prevent="login">

          <b-row class="mb-3">
            <b-col>
              <h1 class="h3 mb-3 font-weight-normal text-white">Please Sign In</h1>
              <div
                class="alert alert-danger"
                role="alert"
                v-if="invalidCredentials"
              >Invalid username and password!</div>
              <div
                class="alert alert-success"
                role="alert"
                v-if="this.$route.query.registration"
              >Thank you for registering, please sign in.</div>
            </b-col>
            <b-col></b-col>
            <!-- <b-col>
              <h1 class="h3 mb-3 font-weight-normal text-white">Register</h1>
            </b-col> -->
          </b-row>
          <b-row>
            <b-col>
              <label for="username" class="sr-only text-white">Username</label>
            <input
              type="text"
              id="username"
              class="form-control"
              placeholder="Username"
              v-model="user.username"
              required
              autofocus
            />
            </b-col>
            <b-col></b-col>
            <!-- <b-col>
              <label class="sr-only text-white">Username</label>
            <input
              type="text"
              id="username"
              class="form-control"
              placeholder="Username"
            />
            </b-col> -->
          </b-row>
            
          <b-row>
            <b-col>
              <label for="password" class="sr-only text-white">Password</label>
              <input
                type="password"
                id="password"
                class="form-control"
                placeholder="Password"
                v-model="user.password"
                required
              />
              <router-link :to="{ name: 'register' }" class="text-primary bg-white">Need an account?</router-link>&nbsp;
              <button type="submit" class="btn btn-light">Sign in</button>
            </b-col>
            <b-col></b-col>
            <!-- <b-col>
              <label for="password" class="sr-only text-white">Password</label>
                <input
                  type="password"
                  id="password"
                  class="form-control"
                  placeholder="Password"
                />
                <button type="submit" class="btn btn-light align-left">Sign in</button>
            </b-col> -->
          </b-row>
            
        </form>
      </div>
    </b-container>    
    <!-- <b-container fluid class="bv-row">
      <b-row class="mb-5">

        <b-col>
          <div id="login" class="text-left">
            <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
          </div>
        <div class="alert alert-danger" role="alert" v-if="invalidCredentials">Invalid username and password!</div>
        <div class="alert alert-success" role="alert" v-if="this.$route.query.registration">Thank you for registering, please sign in.</div>
        </b-col>

        <b-col></b-col>

        <b-col>
          <div id="login" class="text-left">
            <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
          </div>
          <div class="alert alert-danger" role="alert" v-if="invalidCredentials">Invalid username and password!</div>
          <div class="alert alert-success" role="alert" v-if="this.$route.query.registration">Thank you for registering, please sign in.</div>
        </b-col>
      </b-row>
      <b-row class="mb-3">
        <b-col> 
          <b-input-group class="mb-4">
            <b-input-group-prepend is-text>
              <b-icon icon="person"></b-icon>
            </b-input-group-prepend>
            <b-form-input inline type="text" class="form-control" placeholder="Username" v-model="user.username" required autofocus></b-form-input>
          </b-input-group>
        </b-col>
        <b-col order="5">
          <b-input-group class="mb-4">
            <b-input-group-prepend is-text>
              <b-icon icon="person"></b-icon>
            </b-input-group-prepend>
            <b-form-input inline type="text" class="form-control" placeholder="Username" v-model="user.username" required autofocus></b-form-input>
          </b-input-group>
        </b-col>
        <b-col order="1"></b-col>
      </b-row>

      <b-row class="mb-3">
        <b-col order="6"> 
          <b-input-group class="mb-2 mr-sm-2 mb-sm-0">
          <b-input-group-prepend is-text>
            <b-icon icon="key"></b-icon>
          </b-input-group-prepend>
          <b-form-input type="password" id="password" class="form-control" placeholder="Password" v-model="user.password" required></b-form-input>
          </b-input-group>

          <b-form-checkbox class="mb-2 mr-sm-2 mb-sm-0">Remember me</b-form-checkbox>
          
          <router-link :to="{ name: 'register' }"><em>Need an account?</em></router-link>&nbsp;
          <button type="submit">Sign in</button>
        </b-col>
        <b-col order="1">
          <b-input-group class="mb-2 mr-sm-2 mb-sm-0">
          <b-input-group-prepend is-text>
            <b-icon icon="key"></b-icon>
          </b-input-group-prepend>
          <b-form-input type="password" id="password" class="form-control" placeholder="Password" v-model="user.password" required></b-form-input>
          </b-input-group>

          <b-form-checkbox class="mb-2 mr-sm-2 mb-sm-0">Remember me</b-form-checkbox>
          
          <router-link :to="{ name: 'register' }"><em>Need an account?</em></router-link>&nbsp;
          <button type="submit">Sign in</button>
        </b-col>
        <b-col></b-col>
      </b-row>
    </b-container> -->
     
    <!-- <div id="login" class="text-left">
      <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1> -->
      <!-- <div
          class="alert alert-danger"
          role="alert"
          v-if="invalidCredentials"
        >Invalid username and password!</div>
        <div
          class="alert alert-success"
          role="alert"
          v-if="this.$route.query.registration"
        >Thank you for registering, please sign in.</div> -->
      <!-- <b-input-group class="mb-4">
        <b-input-group-prepend is-text>
          <b-icon icon="person"></b-icon>
        </b-input-group-prepend>
        <b-form-input inline type="text" 
          class="form-control" 
          placeholder="Username" 
          v-model="user.username" 
          required 
          autofocus></b-form-input>
      </b-input-group> -->
      <!-- <b-input-group class="mb-2 mr-sm-2 mb-sm-0">
        <b-input-group-prepend is-text>
          <b-icon icon="key"></b-icon>
        </b-input-group-prepend>
        <b-form-input type="password"
          id="password"
          class="form-control"
          placeholder="Password"
          v-model="user.password"
          required
          ></b-form-input>
      </b-input-group> -->

      <!-- <b-form-checkbox class="mb-2 mr-sm-2 mb-sm-0">Remember me</b-form-checkbox> -->

      <!-- <router-link :to="{ name: 'register' }">Need an account?</router-link>
        <button type="submit">Sign in</button> -->
    <!-- </div> -->
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) { 
            this.invalidCredentials = true;
          }
        });
    }
  }
};
</script>

<style>
 .hero-img {
   background-image: url("../assets/img/bg.jpg");
   background-size: cover;
 }
</style>

