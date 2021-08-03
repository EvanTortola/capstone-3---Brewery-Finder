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

    // Do we need this??
    private Logger log = LoggerFactory.getLogger(getClass());

    public BrewerySqlDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Brewery> list () {
        List<Brewery> breweries = new ArrayList<>();
        String sql = "SELECT id, name, street, city, state, phone FROM breweries";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            Brewery card = mapRowToCard(results);
            breweries.add(card);
        }
        return breweries;
    }

    @Override
    public Brewery get(long id) {
        Brewery card = null;
        String sql = "SELECT id, name, street, city, state, phone FRM breweries WHERE id = ? ";

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
        brewery.setBreweryId(rs.getLong("id"));
        brewery.setBreweryName(rs.getString("name"));
        brewery.setBreweryAddress(rs.getString("street"));
        brewery.setBreweryCity(rs.getString("city"));
        brewery.setBreweryState(rs.getString("state"));
        brewery.setPhoneNumber(rs.getString("phone"));

        return brewery;
    }
}
