package com.techelevator.model;

import javax.validation.constraints.NotEmpty;

public class Review {
    //
    @NotEmpty
    private long reviewId;
    @NotEmpty
    private int beerId;
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

    public Review(@NotEmpty long reviewId, @NotEmpty int beerId, @NotEmpty String beerName, String userExperience, @NotEmpty int rating, @NotEmpty String dateTime) {
        this.reviewId = reviewId;
        this.beerId = beerId;
        this.beerName = beerName;
        this.userExperience = userExperience;
        this.rating = rating;
        this.dateTime = dateTime;
    }



    //
    public long getReviewId() {
        return reviewId;
    }

    public void setReviewId(Long reviewId) {
        this.reviewId = reviewId;
    }

    public int getBeerId() {
        return beerId;
    }

    public void setBeerId(int beerId) {
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
        //int rating = 0;
        //if (rating != 0) { return rating;} else {}
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
