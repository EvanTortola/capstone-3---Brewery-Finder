package com.techelevator.model;


import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class BreweryNotFoundException extends RuntimeException {

    public BreweryNotFoundException() {super("Brewery not found");}
}
