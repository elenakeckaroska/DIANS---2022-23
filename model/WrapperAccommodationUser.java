package mk.ukim.finki.dians.app.model;

import lombok.Data;

import java.util.List;

@Data
public class WrapperAccommodationUser {
    private String username;
    private List<Accommodation> accommodations;

    public WrapperAccommodationUser(String username, List<Accommodation> accommodations) {
        this.username = username;
        this.accommodations = accommodations;
    }

}
