<template>
<div class="webpage-base-background vw-100% vh-100">
    <b-container fluid class="bv-row">
        <b-row>
            <b-col></b-col>
            <b-col>
                <div v-for="update in updates" v-bind:key="update.updateId" class="update">

                    <h4  class="brewery-updates-heading">{{update.breweryName}}</h4>
                    <p>{{update.update}}</p>
                </div>
            </b-col>
            <b-col></b-col>
        </b-row>
    </b-container>
    <!-- <div v-for="update in updates" v-bind:key="update.updateId" class="update brewery-updates-heading">
      <h4>{{update.breweryName}}</h4>
      <p>{{update.update}}</p>
    </div> -->
    </div>
 
</template>

<script>
import updateService from "../services/UpdateService"
export default {
    name: "update",

    data() {
        return {
            updates: []
        }
    },

    methods: {
        getUpdates() {
            updateService
            .getUpdates(this.$store.state.user.id)
            .then(response => {
                this.updates = response.data;
            })
        }
    },

    created() {
        this.getUpdates();
    }

}
</script>

<style>

.brewery-updates-heading {
    margin-top: 5%;

    font-size: 30px;
    color: rgb(18, 131, 37);
    text-decoration: underline;
}

</style>