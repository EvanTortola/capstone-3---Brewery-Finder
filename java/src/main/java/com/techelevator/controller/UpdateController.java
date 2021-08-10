package com.techelevator.controller;

import com.techelevator.dao.UpdateDAO;
import com.techelevator.model.Update;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController

public class UpdateController {

    private UpdateDAO updateDAO;

    public UpdateController(UpdateDAO updateDAO) {
        this.updateDAO = updateDAO;
    }

    @RequestMapping(path = "/updates/{userId}", method = RequestMethod.GET)
    public List<Update> getUpdatesByBreweryId(@PathVariable long userId) {
        List<Update> updates = updateDAO.getUpdatesByUserId(userId);
        return updates;
    }

    @RequestMapping(path = "/addUpdate", method = RequestMethod.POST)
    public void addUpdate(@RequestBody Update update) {
        updateDAO.addUpdate(update.getBreweryId(), update.getBreweryName(), update.getUpdate());
    }

    @RequestMapping (path = "/addBU", method = RequestMethod.POST)
    public void addBreweryUser(Long breweryId, Long userId) {
        updateDAO.insertIntoBreweryUser(breweryId, userId);
    }
}
