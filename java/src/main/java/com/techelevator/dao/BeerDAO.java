package com.techelevator.dao;

import com.techelevator.model.Beer;

import java.util.List;

public interface BeerDAO {

     List<Beer> getAllBeer();

     Beer getBeerByName(String name);

     List<Beer> getBeerByBrewery(Long breweryId);

     Beer getBeerById(Long beerId);

     boolean searchBeerByName(String name);

     
    // List<Beer> getAllBeerByBrewery(Long breweryId);  So brewer can update the beer status if the beer is out, or not sold anymore.
    // CreateBeer(Beer newBeer)
    // updateActiveBreweryBeers(Long beerId, boolean isActive);
    // RemoveBeer(Long beerId);  accessed by the brewer
    // UpdateBeerDescription(Long beerId, String name, String type, String Description, String imgUrl);
}
