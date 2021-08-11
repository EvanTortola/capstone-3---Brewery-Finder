<template>
    
  <div class="hero-img vw-100% vh-100" title= "Room with metal brewery cisterns along the walls, and a few wooden benches and small wood crates">
      <div  >
      <b-container fluid class="bv-row">
      
        <div id="login" class="text-center"> 
          <form class="form-signin" @submit.prevent="login">

            <b-row class="mb-3 ">
                <b-col></b-col>                          
              <b-col class= "transprntbox-div">
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
           
                <label for="username" class="sr-only text-primary">Username</label>
                <input
                    type="text"
                    id="username"
                    class="form-control"
                    placeholder="Username"
                    v-model="user.username"
                    required
                    autofocus
                />
                <label for="password" class="sr-only text-primary password-section">Password</label>
                <input
                  type="password"
                  id="password"
                  class="form-control"
                  placeholder="Password"
                  v-model="user.password"
                  required
                />
                <div class="d-flex align-items-start justify-content-center sign-in-button">
                    <router-link :to="{ name: 'register' }" class="text-primary need-acct">Need an account?</router-link>&nbsp;
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

.form-padding {
    padding: 20%
}

 .sign-in-title {
   margin: 10% 5% 10% 5%;

   font-weight: bold;
   color: #128325;
 }

.transprntbox-div {
    margin: 30px;
    background-color: #ffffff;
    border: none;
    opacity: .8;    
}

.transprntbox-container {

  font-weight: bold;
  color: #000000;
}

.password-section {
    margin-top: 5%
}

.sign-in-button {
    margin: 2% 0 10% 0
}

.need-acct {
    margin: 1% 8% 0 0
}

.btn-color {
    background-color: #128325;
    padding: 10px;

    color: rgb(255, 255, 255);
    font-size: 16px;

}

</style>

