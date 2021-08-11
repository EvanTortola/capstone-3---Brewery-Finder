<template>
    <div>
        <b-container fluid class="bv-row">
            <b-row> 
                <b-col></b-col>
                <b-col>
                    <h1>Post An Update:</h1>
                    <form v-on:submit.prevent="submitForm" class="breweryForm">
                        <div class="status-message error" v-show="errorMsg !== ''">{{errorMsg}}</div>
                        <div class="form-group">
                       
                            <label for="update">Update:</label>
                            <input type="text" v-model="update.update">

                        

                        </div>
                        <button class="btn btn-submit" v-on:click.prevent="sendUpdate" >Submit</button>
                        <button class="btn btn-cancel" v-on:click.prevent="cancelForm" type="cancel">Cancel</button>
                    </form>
                </b-col> 

                <b-col></b-col>
            </b-row> 
        </b-container>
    </div>
  
</template>

<script>
import updateService from '@/services/UpdateService'
export default {
    name: "update-form",
    methods: {
          sendUpdate() {
            const newUpdate = {
                breweryId: this.$route.params.breweryId,
                breweryName: this.$route.params.breweryName,
                update: this.update.update
            }
            if (this.update != '') {
                updateService
                .sendUpdate(newUpdate)
                .then (() => {
                    this.$router.push(`/breweries/${this.$route.params.breweryId}`)
                })
            }
        }
    },

    data() {
        return{
         update: {
                   breweryId: this.$route.params.breweryId,
                   breweryName: this.$route.params.breweryName,
                   update: ''
               }
        }
    }
}
</script>

<style>

</style>