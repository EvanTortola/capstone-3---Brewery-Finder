<template>
    <div class="webpage-base-background vw-100% vh-100">
        <b-container fluid class="bv-row">
            <b-row> 
                <b-col></b-col>
                <b-col>
                    <h1 class="form-heading update-heading-margin">Post An Update:</h1>
                    <form v-on:submit.prevent="submitForm" class="breweryForm">
                        <div class="status-message error" v-show="errorMsg !== ''">{{errorMsg}}</div>
                        <div class="form-group update-heading-form">
                       
                            <label for="update ">Update:</label>&nbsp;
                            <input type="text" v-model="update.update">

                        

                        </div>
                        <button class="btn btn-submit btn-color form-detail-btns" v-on:click.prevent="sendUpdate" >Submit</button>
                        <button class="btn btn-cancel btn-color form-detail-btns" v-on:click.prevent="cancelForm" type="cancel">Cancel</button>
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
        },
            cancelForm() {
        this.$router.push(`/breweries/${this.$route.params.breweryId}`);
    },
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

.update-heading-margin {
    margin-bottom: 5%;
}

.update-heading-form {
    margin-bottom: 2%;
}

</style>