package mk.ukim.finki.dians.app.service.impl;

import mk.ukim.finki.dians.app.model.Accommodation;
import mk.ukim.finki.dians.app.repository.jpa.AccommodationRepository;
import mk.ukim.finki.dians.app.service.AccommodationService;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class AccommodationServiceImpl implements AccommodationService {

    private final AccommodationRepository accommodationRepository;

    public AccommodationServiceImpl(AccommodationRepository accommodationRepository) {
        this.accommodationRepository = accommodationRepository;
    }

    @Override
    public List<Accommodation> findAll() {
        return accommodationRepository.findAll();
    }

    @Override
    public Optional<Accommodation> findById(Long id) {
        return accommodationRepository.findById(id);
    }


    @Override
    public List<Accommodation> getAccommodations(List<String> cities, List<String> stars,
                                                 List<String> propertyType, List<String> internetAccess, String sortValue) {

        List<Accommodation> accommodations = new ArrayList<>();
        if (sortValue == null || sortValue.equals(""))
            accommodations = accommodationRepository.findAll();
        else
            accommodations = accommodationRepository.findAll(Sort.by(Sort.Direction.fromString(sortValue), "name"));

        return accommodations.stream()
                .filter(a -> cities.contains(a.getCity()) || cities.get(0).equals("-1"))
                .filter(a -> stars.contains(a.getStars().split("\\.")[0]) || stars.get(0).equals("-1"))
                .filter(a -> propertyType.contains(a.getProperty_type()) || propertyType.get(0).equals("-1"))
                .filter(a -> internetAccess.contains(a.getInternet_access()) || internetAccess.get(0).equals("-1"))
                .collect(Collectors.toList());

    }

    @Override
    public List<Accommodation> findByAccommodationName(String keyword) {
        return accommodationRepository.findByNameContainingIgnoreCase(keyword);
    }
}
