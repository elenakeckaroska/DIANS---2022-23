package mk.ukim.finki.dians.app.service.impl;

import mk.ukim.finki.dians.app.exceptions.InvalidArgumentException;
import mk.ukim.finki.dians.app.exceptions.PasswordsDoNotMatchException;
import mk.ukim.finki.dians.app.model.User;
import mk.ukim.finki.dians.app.repository.jpa.UserRepository;
import mk.ukim.finki.dians.app.service.AuthService;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class AuthServiceImpl implements AuthService {
    private final UserRepository userRepository;

    public AuthServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;

    }

    @Override
    public Optional<User> login(String username, String password) {
        if(username==null || username.isEmpty() || password==null || password.isEmpty()){
            throw new InvalidArgumentException();
        }
        return userRepository.findByUsernameAndPassword(username, password);
    }

    @Override
    public User register(String username, String password, String repeatPassword, String name, String surname) {
        if(username==null || username.isEmpty() || password==null || password.isEmpty()){
            throw new InvalidArgumentException();
        }
        if(!password.equals(repeatPassword))
            throw new PasswordsDoNotMatchException();
        User user=new User(username, password, name, surname);
        return userRepository.save(user);
    }


}
