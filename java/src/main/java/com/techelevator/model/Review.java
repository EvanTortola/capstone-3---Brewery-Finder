package com.techelevator.model;

import javax.validation.constraints.NotEmpty;

public class Review {
    //
    @NotEmpty
    private Long reviewId;
    @NotEmpty
    private Long beerId;
    @NotEmpty
    private String beerName;
    private String userExperience;
    @NotEmpty
    private int rating;
    @NotEmpty
    private String dateTime;



    //
    public Review() {

    }

    public Review(@NotEmpty Long reviewId, @NotEmpty Long breweryId, @NotEmpty String breweryName, String userExperience, @NotEmpty int rating, @NotEmpty String dateTime) {
        this.reviewId = reviewId;
        this.beerId = breweryId;
        this.beerName = breweryName;
        this.userExperience = userExperience;
        this.rating = rating;
        this.dateTime = dateTime;
    }



    //
    public Long getReviewId() {
        return reviewId;
    }

    public void setReviewId(Long reviewId) {
        this.reviewId = reviewId;
    }

    public Long getBeerId() {
        return beerId;
    }

    public void setBeerId(Long beerId) {
        this.beerId = beerId;
    }

    public String getBeerName() {
        return beerName;
    }

    public void setBeerName(String beerName) {
        this.beerName = beerName;
    }

    public String getUserExperience() {
        return userExperience;
    }

    public void setUserExperience(String userExperience) {
        this.userExperience = userExperience;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getDateTime() {
        return dateTime;
    }

    //I think this needs some more logic behind it
    public void setDateTime(String dateTime) {
        this.dateTime = dateTime;
    }



    //
    public String ReviewToString() {
        return "Review{" +
                ", reviewId=" + reviewId +
                ", beerId=" + beerId +
                ", beerName=" + beerName +
                ", userExperience=" + userExperience +
                ", dateAndTime=" + dateTime +
                '}';

    }


}
