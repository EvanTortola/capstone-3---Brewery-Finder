package com.techelevator.model;

import javax.validation.constraints.NotEmpty;

public class Review {
    //
    @NotEmpty
    private Long reviewId;
    @NotEmpty
    private Long breweryId;
    @NotEmpty
    private String breweryName;

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
        this.breweryId = breweryId;
        this.breweryName = breweryName;
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
                ", breweryId=" + breweryId +
                ", breweryName=" + breweryName +
                ", userExperience=" + userExperience +
                ", dateAndTime=" + dateTime +
                '}';

    }


}
