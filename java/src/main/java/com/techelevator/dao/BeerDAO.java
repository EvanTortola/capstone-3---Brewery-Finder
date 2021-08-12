package com.techelevator.dao;

import com.techelevator.model.Beer;

import java.util.List;

public interface BeerDAO {

     List<Beer> getAllBeer();

     Beer getBeerByName(String name);

     List<Beer> getBeerByBrewery(Long breweryId);

     Beer getBeerById(Long beerId);

     boolean searchBeerByName(String name); //So we can search a beer using the search bar.

     void addNewBeer(Beer newBeer);

     boolean deleteBeer(Long beerId);

   // void updateActiveBreweryBeers(Long beerId, boolean isActive); //So you can update beer activity if they are seasonal or no longer available.

}
