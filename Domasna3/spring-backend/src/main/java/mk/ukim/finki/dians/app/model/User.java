package mk.ukim.finki.dians.app.model;

import jakarta.persistence.*;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
@Entity
@Table(name = "user_accounts")
public class User {

    @Id
    private String username;

    private String password;

    private String name;

    private String surname;

    @ManyToMany
    private List<Accommodation> accommodations;

    public User(String username, String password, String name, String surname) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.surname = surname;
        this.accommodations =new ArrayList<>();
    }

    public User() {

    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public List<Accommodation> getAccommodations(){
        return accommodations;
    }

    public void setAccommodations(List<Accommodation> favorites) {
        this.accommodations = favorites;
    }
}
