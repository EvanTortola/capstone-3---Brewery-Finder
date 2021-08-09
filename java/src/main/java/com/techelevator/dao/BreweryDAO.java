package com.techelevator.dao;

import com.techelevator.model.Brewery;

import java.util.List;

public interface BreweryDAO {

    List<Brewery> list();

    Brewery get(long id);

    void addBrewery (String breweryName, String breweryStreet, String breweryCity, String breweryState, String phoneNumber, String history, String image, String hoursOfOperation, String zipCode );

    void updateBrewery (String breweryName, String breweryStreet, String breweryCity, String breweryState, String zipCode, String phoneNumber, String history, String hoursOfOperation, String image, long breweryId );
}
