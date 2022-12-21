package mk.ukim.finki.dians.app.service.impl;

import lombok.RequiredArgsConstructor;
import mk.ukim.finki.dians.app.exceptions.InvalidArgumentException;
import mk.ukim.finki.dians.app.exceptions.PasswordsDoNotMatchException;
import mk.ukim.finki.dians.app.model.User;
import mk.ukim.finki.dians.app.repository.jpa.UserRepository;
import mk.ukim.finki.dians.app.service.RegistrationService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class RegistrationServiceImpl implements RegistrationService {
    private final UserRepository userRepository;

    private final PasswordEncoder passwordEncoder;


    @Override
    public User register(String username, String password, String repeatPassword, String name, String surname) {
        if (username == null || username.isEmpty() || password == null ||
                password.isEmpty() || name == null || name.isEmpty() || surname == null || surname.isEmpty()) {
            throw new InvalidArgumentException();
        }
        if (!password.equals(repeatPassword))
            throw new PasswordsDoNotMatchException();
        User user = new User(username, passwordEncoder.encode(password), name, surname);
        return userRepository.save(user);
    }


}
