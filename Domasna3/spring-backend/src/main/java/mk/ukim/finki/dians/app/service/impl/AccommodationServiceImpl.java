package mk.ukim.finki.dians.app.service.impl;

import mk.ukim.finki.dians.app.model.Accommodation;
import mk.ukim.finki.dians.app.repository.jpa.AccommodationRepository;
import mk.ukim.finki.dians.app.service.AccommodationService;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;

import java.util.*;

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
    public List<Accommodation> findByAccommodationName(String keyword) {
        return accommodationRepository.findByNameContainingIgnoreCase(keyword);
    }

    @Override
    public List<Accommodation> getAccommodations(MultiValueMap<String, String> multiValueMap, String sortValue) {
        Specification<Accommodation> accommodationSpecification = multiValueMap.entrySet().stream()
                .filter(entry -> !entry.getKey().equals("sortValue"))
                .map(entry -> buildOrSpecification(entry.getKey(), entry.getValue()))
                .reduce(Specification.where(null), Specification::and);

        if (sortValue != null) {
            Sort sortCriteria = Sort.by(Sort.Direction.fromString(sortValue), "name");
            return accommodationRepository.findAll(accommodationSpecification, sortCriteria);
        } else {
            return accommodationRepository.findAll(accommodationSpecification);
        }
    }

    private Specification<Accommodation> buildOrSpecification(String propertyKey, List<String> values) {
        return values.stream()
                .map(value -> buildEqualsSpec(propertyKey, value))
                .reduce(Specification.where(null), Specification::or);
    }

    private Specification<Accommodation> buildEqualsSpec(String propertyKey, String value) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get(propertyKey), value);
    }
}
