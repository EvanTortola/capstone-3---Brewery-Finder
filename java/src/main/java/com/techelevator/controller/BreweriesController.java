package com.techelevator.controller;


import com.techelevator.dao.BreweryDAO;
import com.techelevator.model.Brewery;
import org.springframework.web.bind.annotation.*;
//import services.BreweryService;

import javax.validation.Valid;
import java.util.List;

@CrossOrigin
@RestController
<<<<<<< HEAD
@RequestMapping("/breweries")
=======
>>>>>>> 4009a40b5aff5b7d13fcefb766e32d455f87552c
public class BreweriesController {

    private BreweryDAO breweryDAO;


    public BreweriesController(BreweryDAO breweryDAO) {
        this.breweryDAO = breweryDAO;

    }
<<<<<<< HEAD

    @RequestMapping(path = "", method = RequestMethod.GET)
    public List<Brewery> breweries () {return breweryDAO.list();}
=======
    // GET API Brewery provides list of all breweries in Cleveland

    @RequestMapping(path = "/brewery", method = RequestMethod.GET)
    public List<Brewery> list () {
      List<Brewery> breweries  = breweryDAO.list();
      return breweries;
    }

>>>>>>> 4009a40b5aff5b7d13fcefb766e32d455f87552c



    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public Brewery getWithId (@Valid
                               @PathVariable int id) {
        return breweryDAO.get(id);
    }



}
