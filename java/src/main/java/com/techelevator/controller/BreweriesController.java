package com.techelevator.controller;


import com.techelevator.dao.BreweryDAO;
import com.techelevator.model.Brewery;
import org.springframework.web.bind.annotation.*;
//import services.BreweryService;

import javax.validation.Valid;
import java.util.List;

@CrossOrigin
@RestController



public class BreweriesController {

    private BreweryDAO breweryDAO;


    public BreweriesController(BreweryDAO breweryDAO) {
        this.breweryDAO = breweryDAO;

    }




    // GET API Brewery provides list of all breweries in Cleveland

    @RequestMapping(path = "/breweries", method = RequestMethod.GET)
    public List<Brewery> list () {
      List<Brewery> breweries  = breweryDAO.list();
      return breweries;
    }



    //GET API Brewery by ID provides the brewery with given ID -- int or long for ID???
    @RequestMapping(path = "/breweries/{id}", method = RequestMethod.GET)
    public Brewery getWithId (@Valid @PathVariable int id) {
        return breweryDAO.get(id);
    }



}
