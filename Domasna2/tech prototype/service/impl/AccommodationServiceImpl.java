package mk.ukim.finki.dians.app.service.impl;

import mk.ukim.finki.dians.app.model.Accommodation;
import mk.ukim.finki.dians.app.repository.jpa.AccommodationRepository;
import mk.ukim.finki.dians.app.service.AccommodationService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.Set;
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
    public List<Accommodation> getAccommodations(List<String> cities, List<String> stars) {

        return accommodationRepository.findAll().stream()
                .filter(a -> cities.contains(a.getCity()) || cities.get(0).equals("-1"))
                .filter(a -> stars.contains(a.getStars().split("\\.")[0]) || stars.get(0).equals("-1"))
                .collect(Collectors.toList());

    }
}
