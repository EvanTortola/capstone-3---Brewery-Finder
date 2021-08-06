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

        String sql = "SELECT r.review_id, r.brewery_id, r.brewery_name, r.user_experience, r.brewery_rating, r.date_time\n" +
                "FROM review r" +
                "JOIN brewery b " +
                "ON r.brewery_id = b.brewery_id;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            Review review = mapRowToReview(results);
            reviews.add(review);
        }
        return reviews;
    }

    @Override
    public Review saveReview(Review review) {
        review = null;

        return review;
    }

    @Override
    public Review createReview(Brewery breweryId, Review review) {
        

        return null;
    }

    @Override
    public Brewery get(Long breweryId) {
        Brewery pastReviews = null;


        return pastReviews;
    }



    //Helper Method
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
