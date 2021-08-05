package com.techelevator.model;

import javax.validation.constraints.NotEmpty;

public class Beer {

    private Long beerId;

    @NotEmpty
    private String name;

    @NotEmpty
    private String type;

    @NotEmpty
    private String description;

    private String imgUrl;

    private Long abv;

    private Long breweryId;


    public Beer (Long beerId, String name, String type, String description, String imgUrl, Long abv, Long breweryId) {
        this.beerId = beerId;
        this.name = name;
        this.type = type;
        this.description = description;
        this.imgUrl = imgUrl;
        this.abv = abv;
        this.breweryId = breweryId;
    }

    public Beer() {}

    public Long getBeerId() {
        return beerId;
    }

    public void setBeerId(Long beerId) {
        this.beerId = beerId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public Long getAbv() {
        return abv;
    }

    public void setAbv(Long abv) {
        this.abv = abv;
    }

    public Long getBreweryId() {
        return breweryId;
    }

    public void setBreweryId(Long breweryId) {
        this.breweryId = breweryId;
    }
}




