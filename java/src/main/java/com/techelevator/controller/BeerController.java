package com.techelevator.controller;

import com.techelevator.dao.BeerDAO;
import com.techelevator.dao.BreweryDAO;
import com.techelevator.model.Beer;
import com.techelevator.model.Brewery;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RequestMapping("/beer")
@CrossOrigin
@RestController
public class BeerController {

    private BreweryDAO breweryDAO;
    private BeerDAO beerDAO;

    public BeerController(BreweryDAO breweryDAO, BeerDAO beerDAO) {
        this.breweryDAO = breweryDAO;
        this.beerDAO = beerDAO;
    }

    //List all the beer in the database
    @RequestMapping(path = "", method = RequestMethod.GET)
    public List<Beer> getAllBeer() {
        List<Beer> allBeer = beerDAO.getAllBeer();
        return allBeer;
    }

    //Will get a beer by name
    @RequestMapping(path = "/name", method = RequestMethod.GET)
    public Beer getBeerByName(String name) {
        Beer byName = beerDAO.getBeerByName(name);
        return byName;
    }

    //Will get a beer by brewery ID
    @RequestMapping(path = "/{breweryId}", method = RequestMethod.GET)
    public List<Beer> getBeerByBrewery(@Valid @PathVariable Long breweryId) {
        List<Beer> beerByBreweryId = beerDAO.getBeerByBrewery(breweryId);
        return beerByBreweryId;
    }

    //Will get beer by ID
    @RequestMapping(path = "/beer/{id}", method = RequestMethod.GET)
    public Beer getBeerById(@Valid @PathVariable Long id) {
        return beerDAO.getBeerById(id);
    }
    
    //Will allow the brewer to add a new beer
    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(path = "/addBeer", method = RequestMethod.POST)
    public void addNewBeer(@RequestBody Beer newBeer) {
        beerDAO.addNewBeer(newBeer);
    }

    //Will allow the brewer to delete a beer
    @RequestMapping(path = "/deleteBeer/{beerId}", method = RequestMethod.DELETE)
    public boolean deleteBeer(@PathVariable Long beerId) {
        beerDAO.deleteBeer(beerId);
        return true;
    }
}
