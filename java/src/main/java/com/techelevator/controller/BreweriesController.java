package com.techelevator.controller;


import com.techelevator.dao.BreweryDAO;
import com.techelevator.model.Brewery;
import org.springframework.web.bind.annotation.*;
//import services.BreweryService;

import javax.validation.Valid;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/breweries")
public class BreweriesController {

    private BreweryDAO breweryDAO;


    public BreweriesController(BreweryDAO breweryDAO) {
        this.breweryDAO = breweryDAO;

    }

    @RequestMapping(path = "", method = RequestMethod.GET)
    public List<Brewery> breweries () {return breweryDAO.list();}



    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public Brewery getWithId (@Valid
                               @PathVariable int id) {
        return breweryDAO.get(id);
    }



}
