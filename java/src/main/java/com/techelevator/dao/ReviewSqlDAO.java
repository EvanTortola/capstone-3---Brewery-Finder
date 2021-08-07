package com.techelevator.dao;

import com.techelevator.model.Beer;
import com.techelevator.model.Review;
import org.springframework.beans.factory.annotation.Autowired;
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


    //do I need an @Autowired private ReviewSqlDAO reviewSqlDAO;?
    @Autowired
    ReviewSqlDAO reviewSqlDAO;


    //
    @Override
    public List<Review> listAllReviews() {
        List<Review> reviews = new ArrayList<>();

        String sql = "SELECT review_id, beer_id, beer_name, user_experience, beer_rating, date_time FROM review;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            Review review = mapRowToReview(results);
            reviews.add(review);
        }
        return reviews;
    }

    @Override
    public void createReview(int beerId, String beerName, String userExperience, int rating, String dateTime) {
        String sql = "INSERT INTO review (beer_id, beer_name, user_experience, beer_rating, date_time) VALUES (?,?,?,?,?);";
        
        jdbcTemplate.update(sql, beerId, beerName, userExperience, rating, dateTime);
    }

    @Override
    public Review getReviewByBeer(int beerId) {
        Review beerReviewed = null;

        String sql = "SELECT review_id, beer_id, beer_name, user_experience, beer_rating, date_time FROM review  WHERE beer_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, beerId);
        if (results.next()) {
            beerReviewed = mapRowToReview(results);
        }
        return beerReviewed;
    }



    //Helper Method
    private Review mapRowToReview(SqlRowSet rs) {
        Review review = new Review();

        review.setReviewId(rs.getLong("review_id"));
        review.setBeerId(rs.getInt("beer_id"));
        review.setBeerName(rs.getString("beer_name"));
        review.setUserExperience(rs.getString("user_experience"));
        review.setRating(rs.getInt("beer_rating"));
        review.setDateTime(rs.getString("date_time"));

        return review;
    }
}
