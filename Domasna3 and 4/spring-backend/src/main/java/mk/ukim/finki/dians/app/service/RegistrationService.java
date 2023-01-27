package mk.ukim.finki.dians.app.service;

import mk.ukim.finki.dians.app.model.User;

public interface RegistrationService {

    User register(String username, String password, String repeatPassword, String name, String surname);

}
