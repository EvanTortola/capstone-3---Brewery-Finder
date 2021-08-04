<template>
  <div id="register" class="text-center hero-img vw-100 vh-100">
    <b-container fluid class="bv-row">
      <form class="form-register" @submit.prevent="register">        
               
        <b-row class="mb-5">
          <b-col></b-col>
          <b-col>
            <h1 class="h3 mb-3 font-weight-normal">Create Account</h1>          
            <div class="alert alert-danger" role="alert" v-if="registrationErrors">
                {{ registrationErrorMsg }}
            </div>            
          </b-col>
          <b-col></b-col>
        </b-row>

        <b-row>
          <b-col></b-col>
          <b-col>
            <label for="username" class="sr-only">Username</label>
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

        </b-row>
            <b-row>
              <b-col></b-col>
              <b-col>
              <label for="password" class="sr-only">Password</label>
              <input
                type="password"
                id="password"
                class="form-control"
                placeholder="Password"
                v-model="user.password"
                required
              />
              <input
                type="password"
                id="confirmPassword"
                class="form-control"
                placeholder="Confirm Password"
                v-model="user.confirmPassword"
                required
              />
              <router-link :to="{ name: 'login' }" class="text-primary bg-white align-bottom">Have an account?</router-link>&nbsp;
              <button class="btn btn-lg btn-light btn-block" type="submit">
                Create Account
              </button>
              </b-col>
              <b-col></b-col>
          </b-row>          
        </form>
    
    </b-container>
  </div>
</template>

<script>
import authService from '../services/AuthService';

export default {
  name: 'register',
  data() {
    return {
      user: {
        username: '',
        password: '',
        confirmPassword: '',
        role: 'user',
      },
      registrationErrors: false,
      registrationErrorMsg: 'There were problems registering this user.',
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = 'Password & Confirm Password do not match.';
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.$router.push({
                path: '/login',
                query: { registration: 'success' },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = 'Bad Request: Validation Errors';
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = 'There were problems registering this user.';
    },
  },
};
</script>

<style></style>
