package services;

import com.techelevator.model.Brewery;
import com.techelevator.model.BreweryNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.web.client.ResourceAccessException;
import org.springframework.web.client.RestClientResponseException;
import org.springframework.web.client.RestTemplate;

@Component
public class RestBreweryService implements BreweryService {


    public RestTemplate restTemplate = new RestTemplate();

    @Override
    public Brewery listAllBreweries() {
        Brewery brewery = null;
        try {
            brewery = restTemplate.getForObject("https://localhost:8080/breweries", Brewery.class);
        }

        catch (RestClientResponseException ex) {
            System.err.println("Brewery Not Found");
        }

        catch(ResourceAccessException ex) {
            System.err.println("Error has occurred");
        }

        return brewery;
    }



}
