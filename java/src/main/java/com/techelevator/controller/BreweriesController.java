package com.techelevator.controller;
import com.techelevator.dao.BreweryDAO;
import com.techelevator.model.Brewery;
import org.springframework.web.bind.annotation.*;
<<<<<<< HEAD
import services.BreweryService;
=======
//import services.BreweryService;
>>>>>>> 892be58889aee973c7aa163a5918d5f1b8778c72

import javax.validation.Valid;
import java.util.List;

<<<<<<< HEAD


=======
@CrossOrigin
>>>>>>> 892be58889aee973c7aa163a5918d5f1b8778c72
@RestController
@CrossOrigin
public class BreweriesController {

    private BreweryDAO breweryDAO;


    public BreweriesController(BreweryDAO breweryDAO) {
        this.breweryDAO = breweryDAO;

    }
    // Brewery provides list of all breweries in Cleveland

    @RequestMapping(path = "/breweries", method = RequestMethod.GET)
    public List<Brewery> list () {
      List<Brewery> breweries  = breweryDAO.list();
      return breweries;
    }

    // Brewery by ID provides the brewery with given ID -- int or long for ID???
    @RequestMapping(path = "/breweries/{id}", method = RequestMethod.GET)
    public Brewery getWithId (@Valid @PathVariable int id) {
        return breweryDAO.get(id);
    }
}
