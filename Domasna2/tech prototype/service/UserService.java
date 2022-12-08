package mk.ukim.finki.dians.app.service;

import mk.ukim.finki.dians.app.model.User;

import java.util.Optional;

public interface UserService {
    User addFavorite(String username, Long id);
    Optional<User> findByUsername(String username);
}
