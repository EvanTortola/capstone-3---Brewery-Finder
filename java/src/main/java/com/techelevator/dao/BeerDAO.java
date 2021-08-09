package com.techelevator.dao;

import com.techelevator.model.Beer;

import java.util.List;

public interface BeerDAO {

     List<Beer> getAllBeer();

     Beer getBeerByName(String name);

     List<Beer> getBeerByBrewery(Long breweryId);

     Beer getBeerById(Long beerId);

     boolean searchBeerByName(String name);

     void addNewBeer(Beer newBeer);

     boolean deleteBeer(Long beerId);

    // List<Beer> getAllBeerByBrewery(Long breweryId);  So brewer can update the beer status if the beer is out, or not sold anymore.
    // updateActiveBreweryBeers(Long beerId, boolean isActive);
    // UpdateBeerDescription(Long beerId, String name, String type, String Description, String imgUrl);
}
