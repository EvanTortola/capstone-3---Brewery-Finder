package com.techelevator.controller;


import com.techelevator.dao.BreweryDAO;
import com.techelevator.model.Brewery;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import services.BreweryService;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api")
public class BreweriesController {

    private BreweryDAO breweryDAO;
    private BreweryService breweryService;

    public BreweriesController(BreweryDAO breweryDAO, BreweryService breweryService) {
        this.breweryDAO = breweryDAO;
        this.breweryService = breweryService;
    }
    // GET API Brewery provides list of all breweries in Cleveland
    @RequestMapping(path = "/breweries", method = RequestMethod.GET)
    public List<Brewery> breweries () {return breweryDAO.list();}


    //GET API Brewery by ID provides the brewery with given ID -- int or long for ID???
    @RequestMapping(path = "/breweries/{id}", method = RequestMethod.GET)
    public Brewery getWithId (@Valid
                               @PathVariable int id) {
        return breweryDAO.get(id);
    }



}