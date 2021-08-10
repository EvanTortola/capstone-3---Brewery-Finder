package com.techelevator.dao;

import com.techelevator.model.Update;
import com.techelevator.model.BreweryUser;

import java.util.List;

public interface UpdateDAO {

    void addUpdate (Long breweryId, String breweryName, String update);

    List<Update> getUpdatesByUserId(Long userId);

    void insertIntoBreweryUser (BreweryUser breweryUser);
}
