package com.techelevator.model;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus( value = HttpStatus.NOT_FOUND)
public class ReviewNotFoundException extends Exception{

    public ReviewNotFoundException() {super("Review Doesn't Exist.");}
}
