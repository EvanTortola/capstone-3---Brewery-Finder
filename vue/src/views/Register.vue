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

              <b-row>
                <b-col></b-col>
                <b-col>
                  <div class="dropdown">
                    <button class="dropbtn">Dropdown</button>
                      <div class="dropdown-content">
                        <form>
                         <input type="radio" id="user" name="role" value="user" v-model="user.role">
                           <label for="Beer Lover">Beer Lover</label>
                           <br>
                        <input type="radio" id="brewer" name="role" value="brewer" v-model="user.role">
                           <label for="brewer">Brewer</label>
                           <br>
                        </form>
                      </div>
                  </div>
                </b-col>
              </b-row>
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
        role: '',
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

<style>
.dropbtn {
  background-color: #cc611a;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
  background-color: #3e8e41;
}
</style>
