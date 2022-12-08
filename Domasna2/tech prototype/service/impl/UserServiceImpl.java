package mk.ukim.finki.dians.app.service.impl;

import mk.ukim.finki.dians.app.model.Accommodation;
import mk.ukim.finki.dians.app.model.User;
import mk.ukim.finki.dians.app.repository.jpa.AccommodationRepository;
import mk.ukim.finki.dians.app.repository.jpa.UserRepository;
import mk.ukim.finki.dians.app.service.UserService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final AccommodationRepository accommodationRepository;

    public UserServiceImpl(UserRepository userRepository, AccommodationRepository accommodationRepository) {
        this.userRepository = userRepository;
        this.accommodationRepository = accommodationRepository;
    }

    @Override
    public User addFavorite(String username, Long id){

        Accommodation accommodation= accommodationRepository.findById(id).get();
        User user = userRepository.findByUsername(username).get();
        List<Accommodation> accommodations =  user.getAccommodations();

        if(accommodations.contains(accommodation)) {
            accommodations.remove(accommodation);
        } else {
            accommodations.add(accommodation);
        }

        return userRepository.save(user);
    }

    @Override
    public Optional<User> findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
}
