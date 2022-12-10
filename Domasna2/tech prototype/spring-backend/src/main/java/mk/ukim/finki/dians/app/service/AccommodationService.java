package mk.ukim.finki.dians.app.service;

import mk.ukim.finki.dians.app.model.Accommodation;

import java.util.List;
import java.util.Optional;
import java.util.Set;

public interface AccommodationService {
    List<Accommodation> findAll();

    Optional<Accommodation> findById(Long id);


    List<Accommodation> getAccommodations(List<String> cities, List<String> stars)
            ;
}
