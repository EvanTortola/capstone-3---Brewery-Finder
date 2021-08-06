package com.techelevator.dao;

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
    public List<Review> listAllReviews() {
        List<Review> reviews = new ArrayList<>();

        String sql = "SELECT r.review_id, r.beer_id, r.beer_name, r.user_experience, r.beer_rating, r.date_time FROM review r;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            Review review = mapRowToReview(results);
            reviews.add(review);
        }
        return reviews;
    }

    @Override
    public void createReview(int breweryID, String breweryName, String userExperience, int rating, String dateTime) {
        String sql = "INSERT INTO review (beer_id, beer_name, user_experience, beer_rating, date_time) VALUES ()";
        


    }

    @Override
    public Review getReviewByBeer(Long beerId) {
        return null;
    }



    //Helper Method
    private Review mapRowToReview(SqlRowSet rs) {
        Review review = new Review();

        review.setReviewId(rs.getLong("review_id"));
        review.setBeerId(rs.getLong("beer_id"));
        review.setBeerName(rs.getString("beer_name"));
        review.setUserExperience(rs.getString("user_experience"));
        review.setRating(rs.getInt("beer_rating"));
        review.setDateTime(rs.getString("date_time"));

        return review;
    }
}
