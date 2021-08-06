package com.techelevator.dao;

import com.techelevator.model.Brewery;
import com.techelevator.model.Review;

import java.util.List;

public interface ReviewDAO {

    List<Review> listAll();

    Review saveReview(Review review);

    Review createReview(Brewery breweryId, Review review);

    //Review searchReviewByBrewery();

    Brewery get(Long breweryId); //should this be Long reviewId? I already use that name in the Review model

    //Beer get(Long id);

    //need the ability to create a review

    //do we need a boolean createReview method for integration testing, like UserDAO line 17 has?
}
