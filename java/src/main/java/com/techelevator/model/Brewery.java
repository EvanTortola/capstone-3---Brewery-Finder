package com.techelevator.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.validation.constraints.NotEmpty;

public class Brewery {

    @JsonProperty("id")
    @NotEmpty
    private Long breweryId;
    @JsonProperty("name")
    @NotEmpty
    private String breweryName;
    @JsonProperty("street")
    @NotEmpty
    private String breweryAddress;
    @JsonProperty("city")
    @NotEmpty
    private String breweryCity;
    @JsonProperty("state")
    @NotEmpty
    private String breweryState;
    @JsonProperty("phone")
    @NotEmpty
    private String phoneNumber;

    public Long getBreweryId() {
        return breweryId;
    }

    public void setBreweryId(Long breweryId) {
        this.breweryId = breweryId;
    }

    public String getBreweryName() {
        return breweryName;
    }

    public void setBreweryName(String breweryName) {
        this.breweryName = breweryName;
    }

    public String getBreweryAddress() {
        return breweryAddress;
    }

    public void setBreweryAddress(String breweryAddress) {
        this.breweryAddress = breweryAddress;
    }

    public String getBreweryCity() {
        return breweryCity;
    }

    public void setBreweryCity(String breweryCity) {
        this.breweryCity = breweryCity;
    }

    public String getBreweryState() {
        return breweryState;
    }

    public void setBreweryState(String breweryState) {
        this.breweryState = breweryState;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}
