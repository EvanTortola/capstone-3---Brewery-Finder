<template>
    
  <div class="hero-img vw-100% vh-100" title= "Room with metal brewery cisterns along walls, wooden benches, and small wood crates">
      <div class="transprnt-overlay-login vw-100 vh-100">
      <div  class="sign-in-form ">
      <b-container fluid class="bv-row">
      
        <div id="login" class="text-center"> 
          <form class="form-signin" @submit.prevent="login">

            <b-row class="mb-3">
                <b-col></b-col>                          
              <b-col cols="8">
                <h1 class="h3 mb-4 sign-in-title">Please Sign In</h1>
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
           
                <label for="username" class="sr-only field-headings">Username</label>
                <input
                    type="text"
                    id="username"
                    class="form-control"
                    placeholder="Username"
                    v-model="user.username"
                    required
                    autofocus
                />
                <label for="password" class="sr-only password-section field-headings">Password</label>
                <input
                  type="password"
                  id="password"
                  class="form-control"
                  placeholder="Password"
                  v-model="user.password"
                  required
                />
                <div class="d-flex align-items-start justify-content-center sign-in-button">
                    <router-link :to="{ name: 'register' }" class="need-acct">Need an account?</router-link>&nbsp;
                    <button type="submit" class="btn btn-color">Sign in</button>
                </div>
              </b-col>
              <b-col></b-col>
            </b-row>
              
          </form>
        </div>
      </b-container>

    </div>
    </div>  
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
   background: cover;
 }

.transprnt-overlay-login {
    background-color: rgba(255, 250, 250, .4);
    /* background-color: rgb(68, 52, 52); */
    /* margin: 30%; */
    /* opacity: .8; */
}
.sign-in-form {
    /* padding: 20%; */

    margin: 0 30% 0 30%;

    border-radius: 5px;

    background-color: rgb(241, 235, 172);
}

 .sign-in-title {
   margin: 20% 5% 20% 5%;

   font-weight: bold;
   font-size: 50px;
   color: rgb(18, 131, 37);
 }

.field-headings {
    color: rgb(18, 131, 37);
}

.password-section {
    margin-top: 5%;
}

.sign-in-button {
    margin: 2% 0 10% 0;
}

.need-acct {
    margin: 1% 2% 0 0;
    color: rgb(128, 128, 128);
    text-decoration: none;
}
.need-acct:hover {
    margin: 1% 2% 0 0;
    color:rgb(18, 131, 37);
    text-decoration: none;
}

.btn-color {
    background-color: rgb(18, 130, 36);
    padding: 10px;

    color: rgb(255, 255, 255);
    font-size: 16px;

}

.btn-color:hover {
    background-color: rgb(19, 168, 44);
    padding: 10px;

    color: rgb(255, 255, 255);
    font-size: 16px;
}

</style>

