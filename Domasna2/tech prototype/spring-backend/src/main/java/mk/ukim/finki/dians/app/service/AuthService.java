package mk.ukim.finki.dians.app.service;

import mk.ukim.finki.dians.app.model.User;

import java.util.Optional;

public interface AuthService {
    Optional<User> login(String username, String password);

    User register(String username, String password, String repeatPassword, String name, String surname);

}
