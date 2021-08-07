package com.techelevator.controller;
import com.techelevator.dao.BreweryDAO;
import com.techelevator.model.Brewery;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

// import services.BreweryService;






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


    // Brewery by ID provides the brewery with given ID -- int or long for ID???

    @RequestMapping(path = "/breweries/{id}", method = RequestMethod.GET)
    public Brewery getWithId (@Valid @PathVariable int id) {
        return breweryDAO.get(id);
    }

    
    @RequestMapping(path = "/breweries/new", method = RequestMethod.POST)
    public void addNewBrewery (@RequestBody Brewery brewery) {
        breweryDAO.addBrewery(brewery.getBreweryName(), brewery.getBreweryStreet(), brewery.getBreweryCity(), brewery.getBreweryState(), brewery.getZipCode(), brewery.getPhoneNumber(), brewery.getHistory(), brewery.getHoursOfOperation(),brewery.getImage());
    }

    @RequestMapping(path ="/breweries", method = RequestMethod.PUT)
    public void updateBrewery (@RequestBody Brewery brewery) {
        breweryDAO.updateBrewery(brewery.getBreweryName(), brewery.getBreweryStreet(), brewery.getBreweryCity(), brewery.getBreweryState(), brewery.getZipCode(), brewery.getPhoneNumber(), brewery.getHistory(), brewery.getHoursOfOperation(),brewery.getImage(), brewery.getBreweryId());
    }
}
