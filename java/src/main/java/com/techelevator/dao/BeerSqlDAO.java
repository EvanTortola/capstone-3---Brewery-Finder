package com.techelevator.dao;

import com.techelevator.model.Beer;
import com.techelevator.model.Brewery;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class BeerSqlDAO implements BeerDAO{

    private JdbcTemplate jdbcTemplate;

    public BeerSqlDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
   public List<Beer> getAllBeer() {

        List<Beer> allBeers = new ArrayList<>();
        String sql = "SELECT beer_id, brewery_id, name, type, description, img_url, abv FROM beer;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            Beer beers = mapRowToBeer(results);
            allBeers.add(beers);
        }
        return allBeers;
    }

    @Override
    public Beer getBeerByName(String name) {
        Beer newBeer = new Beer();
        String sql = "SELECT beer_id, brewery_id, name, type, description, img_url, abv FROM beer WHERE name = ?";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, name);

        if(result.next()) {
            newBeer = mapRowToBeer(result);
        }
        return newBeer;
    }

    @Override
    public List<Beer> getBeerByBrewery(Long breweryId) {
        List<Beer> breweryBeerList = new ArrayList<>();
        String sql= "SELECT beer_id, brewery_id, name, type, description, img_url, abv FROM beer b JOIN brewery br ON b.beer_id = br.brewery_id WHERE brewery_name = ?;";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, breweryId);

        while(result.next()) {
            breweryBeerList.add(mapRowToBeer(result));
        }
        return breweryBeerList;
    }

    @Override
    public Beer getBeerById(Long beerId) {
        Beer beer = null;
        String sql = "SELECT beer_id, brewery_id, name, type, description, img_url, abv FROM beer WHERE beer_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql,beerId);
        if (results.next()) {
             beer = mapRowToBeer(results);
        }
        return beer;
    }

    @Override
    public boolean searchBeerByName(String name) {
        String sql = "SELECT beer_id, brewery_id, name, type, description, img_url, abv FROM beer WHERE name = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql,name.toUpperCase());

        if (results.next()) {
            return true;
        } else {
            return false;
        }
    }

    private Beer mapRowToBeer(SqlRowSet row) {
        Beer newBeer = new Beer();

        newBeer.setBeerId(row.getLong("beer_id"));
        newBeer.setName(row.getString("name").toUpperCase());
        newBeer.setAbv(row.getLong("abv"));
        newBeer.setType(row.getString("type"));
        newBeer.setDescription(row.getString("description"));
        newBeer.setImgUrl(row.getString("img_url"));
        newBeer.setBreweryId(row.getLong("brewery_id"));

        return newBeer;
    }
}
