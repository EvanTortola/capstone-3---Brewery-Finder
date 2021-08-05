package com.techelevator.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.validation.constraints.NotEmpty;

public class Brewery {


    @NotEmpty
    private Long breweryId;
    @NotEmpty
    private String breweryName;
    @NotEmpty
    private String breweryAddress;
    @NotEmpty
    private String breweryCity;
    @NotEmpty
    private String breweryState;
    @NotEmpty
    private String phoneNumber;
    private String history;
    private String image;
    private String hoursOfOperation;
    private String zipCode;

    public Brewery (Long breweryId, String breweryName, String breweryAddress, String breweryCity, String breweryState, String phoneNumber,
                     String history, String image, String hoursOfOperation, String zipCode) {

        this.breweryId = breweryId;
        this.breweryName = breweryName;
        this.breweryAddress = breweryAddress;
        this.breweryCity = breweryCity;
        this.breweryState = breweryState;
        this.phoneNumber = phoneNumber;
        this.history = history;
        this.image = image;
        this.hoursOfOperation = hoursOfOperation;
        this.zipCode= zipCode;
    }

    public Brewery() {}

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

    public String getHistory() {
        return history;
    }

    public void setHistory(String history) {
        this.history = history;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getHoursOfOperation() {
        return hoursOfOperation;
    }

    public void setHoursOfOperation(String hoursOfOperation) {
        this.hoursOfOperation = hoursOfOperation;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }
}
