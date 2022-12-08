package mk.ukim.finki.dians.app.repository;

import mk.ukim.finki.dians.app.bootstrap.DataHolder;
import mk.ukim.finki.dians.app.model.Accommodation;
import mk.ukim.finki.dians.app.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.OptionalInt;

@Repository
public class InMemoryUserRepository {

    public Optional<User> findByUsername(String username){
        return DataHolder.users.stream()
                .filter(r->r.getUsername().equals(username))
                .findFirst();
    }

    public Optional<User> findByUsernameAndPasswords(String username, String password){
        return DataHolder.users.stream()
                .filter(r->r.getUsername().equals(username)&&r.getPassword().equals(password))
                .findFirst();
    }

    public Optional<User> save(User user){
        DataHolder.users.add(user);
        return Optional.of(user);
    }

    public void delete(String username){
        DataHolder.users.removeIf(r->r.getUsername().equals(username));
    }


}
