package com.techelevator.dao;

import com.techelevator.model.Brewery;
import com.techelevator.model.Review;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class ReviewSqlDAO implements ReviewDAO{

    private JdbcTemplate jdbcTemplate;

    //for the integration test
    public ReviewSqlDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    //
    @Override
    public List<Review> listAll() {
        List<Review> reviews = new ArrayList<>();

        String sql = "";

        return reviews;
    }

    @Override
    public Review saveReview(Review review) {
        review = null;

        return null;
    }

    @Override
    public Brewery get(Long breweryId) {
        Brewery pastReviews = null;


        return pastReviews;
    }

    private Review mapRowToReview(SqlRowSet rs) {
        Review review = new Review();

        review.setReviewId(rs.getLong("review_id"));
        review.setBreweryId(rs.getLong("brewery_id"));
        review.setBreweryName(rs.getString("brewery_name"));
        review.setUserExperience(rs.getString("user_experience"));
        review.setRating(rs.getInt("brewery_rating"));
        review.setDateTime(rs.getString("date_time"));

        return review;
    }
}
