package com.techelevator.dao;

import com.techelevator.model.Brewery;
import com.techelevator.model.Review;

import java.util.List;

public interface ReviewDAO {

List<Review> listAllReviews();

void createReview(int beerID, String beerName, String userExperience, int rating, String dateTime);

Review getReviewByBeer(Long beerId);

    //do we need a boolean createReview method for integration testing, like UserDAO line 17 has?
}
