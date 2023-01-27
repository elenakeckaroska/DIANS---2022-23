package mk.ukim.finki.dians.app.service;

import mk.ukim.finki.dians.app.model.Accommodation;
import org.springframework.util.MultiValueMap;

import java.util.List;
import java.util.Optional;

public interface AccommodationService {
    List<Accommodation> findAll();

    Optional<Accommodation> findById(Long id);

    List<Accommodation> findByAccommodationName(String keyword);

    List<Accommodation> getAccommodations(MultiValueMap<String, String> multiValueMap, String sortValue);
}
