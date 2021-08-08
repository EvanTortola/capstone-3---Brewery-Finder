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

    private String abv;

    private Long breweryId;

    private Long rating;


    public Beer (Long beerId, String name, String type, String description, String imgUrl, String abv, Long breweryId, Long rating) {
        this.beerId = beerId;
        this.name = name;
        this.type = type;
        this.description = description;
        this.imgUrl = imgUrl;
        this.abv = abv;
        this.breweryId = breweryId;
        this.rating = rating;
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

    public String getAbv() {
        return abv;
    }

    public void setAbv(String abv) {
        this.abv = abv;
    }

    public Long getBreweryId() {
        return breweryId;
    }

    public void setBreweryId(Long breweryId) {
        this.breweryId = breweryId;
    }
}




