package com.techelevator.dao;

import com.techelevator.model.Brewery;

import java.util.List;

public interface BreweryDAO {

    List<Brewery> list();

    Brewery get(long id);

}