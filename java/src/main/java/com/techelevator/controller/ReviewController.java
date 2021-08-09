package com.techelevator.controller;

import com.techelevator.dao.BreweryDAO;
import com.techelevator.dao.ReviewDAO;
import com.techelevator.model.Review;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@CrossOrigin

@RestController

public class ReviewController {

    //
    private ReviewDAO reviewDAO;


    //
    public ReviewController(ReviewDAO reviewDAO) {
        this.reviewDAO = reviewDAO;
    }


    //
    @RequestMapping(path = "/reviews", method = RequestMethod.GET)
    public List<Review> listAllReviews() {
        List<Review> reviews = reviewDAO.listAllReviews();
        return reviews;
    };

    @RequestMapping(path = "/reviews/{beerId}", method = RequestMethod.GET)
    public List<Review> getReviewByBeerId(@Valid @PathVariable int beerId) {
        return reviewDAO.getReviewByBeer(beerId);
    };

    @RequestMapping(path = "/addReview", method = RequestMethod.POST)
    public void createReview(@RequestBody Review review) {
        reviewDAO.createReview(review.getBeerId(), review.getBeerName(), review.getUserExperience(), review.getRating(), review.getDateTime());
    }




}
