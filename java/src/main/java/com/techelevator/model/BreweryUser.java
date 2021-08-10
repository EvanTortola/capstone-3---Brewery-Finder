package com.techelevator.model;

public class BreweryUser {

    private Long breweryId;

    private Long UserId;

    public BreweryUser(Long breweryId, Long userId) {
        this.breweryId = breweryId;
        UserId = userId;
    }

    public Long getBreweryId() {
        return breweryId;
    }

    public void setBreweryId(Long breweryId) {
        this.breweryId = breweryId;
    }

    public Long getUserId() {
        return UserId;
    }

    public void setUserId(Long userId) {
        UserId = userId;
    }
}
