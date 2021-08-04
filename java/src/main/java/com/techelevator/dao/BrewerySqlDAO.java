package com.techelevator.dao;


import com.techelevator.model.Brewery;
import com.techelevator.model.BreweryNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class BrewerySqlDAO implements BreweryDAO {

    private JdbcTemplate jdbcTemplate;

    public BrewerySqlDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Brewery> list () {
        List<Brewery> breweries = new ArrayList<>();
        String sql = "SELECT brewery_id, brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image FROM brewery;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            Brewery brewery = mapRowToCard(results);
            breweries.add(brewery);
        }
        return breweries;
    }

    @Override
    public Brewery get(long id) {
        Brewery card = null;
        String sql = "SELECT brewery_id, brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image FROM brewery WHERE brewery_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql,id);
        if(results.next()) {
            card = mapRowToCard(results);
        } else {
            throw new BreweryNotFoundException();
        }

        return card;
    }


    private Brewery mapRowToCard(SqlRowSet rs) {
        Brewery brewery = new Brewery();
        brewery.setBreweryId(rs.getLong("brewery_id"));
        brewery.setBreweryName(rs.getString("brewery_name"));
        brewery.setBreweryAddress(rs.getString("street"));
        brewery.setBreweryCity(rs.getString("city"));
        brewery.setBreweryState(rs.getString("state"));
        brewery.setZipCode(rs.getString("zip_code"));
        brewery.setPhoneNumber(rs.getString("phone"));
        brewery.setHistory(rs.getString("history"));
        brewery.setHoursOfOperation(rs.getString("hours_of_operation"));
        brewery.setImage(rs.getString("image"));


        return brewery;
    }
}
