package mk.ukim.finki.dians.app.model;

import jakarta.annotation.Nullable;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.Value;

@Data
@Entity
public class Accommodation {
    @Id
    private Long id;

    private Double latitude;

    private Double longitude;

    private String name;

    private String property_type;

    private String website;

    private String stars;

    private String email;

    private String phone;

    private String city;

    private String postcode;

    private String street;

    private String house_number;

    private String smoking;

    private String rooms;

    private String internet_access;

    private String internet_access_fee;

    private String municipality;


    public Accommodation(Long id,Double latitude, Double longitude, String name, String property_type, String website,
                         String stars, String email, String phone, String city, String postcode, String street,
                         String house_number, String smoking, String rooms, String internet_access, String internet_access_fee,
                         String municipality) {
        this.id=id;
        this.latitude = latitude;
        this.longitude = longitude;
        this.name = name;
        this.property_type = property_type;
        this.website = website;
        this.stars = stars;
        this.email = email;
        this.phone = phone;
        this.city = city;
        this.postcode = postcode;
        this.street = street;
        this.house_number = house_number;
        this.smoking = smoking;
        this.rooms = rooms;
        this.internet_access = internet_access;
        this.internet_access_fee = internet_access_fee;
        this.municipality = municipality;
    }

    public Accommodation() {

    }
}
