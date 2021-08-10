package com.techelevator.model;

public class Update {

    private Long updateId;
    private Long breweryId;
    private String update;
    private String breweryName;

    public Update (Long updateId, Long breweryId, String breweryName, String update) {
        this.updateId = updateId;
        this.breweryId = breweryId;
        this.update = update;
        this.breweryName = breweryName;
    }

    public Update() {}

    public Long getUpdateId() {
        return updateId;
    }

    public void setUpdateId(Long updateId) {
        this.updateId = updateId;
    }

    public Long getBreweryId() {
        return breweryId;
    }

    public void setBreweryId(Long breweryId) {
        this.breweryId = breweryId;
    }

    public String getUpdate() {
        return update;
    }

    public void setUpdate(String update) {
        this.update = update;
    }

    public String getBreweryName() {
        return breweryName;
    }

    public void setBreweryName(String breweryName) {
        this.breweryName = breweryName;
    }
}
