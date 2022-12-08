package mk.ukim.finki.dians.app.bootstrap;

import jakarta.annotation.PostConstruct;
import mk.ukim.finki.dians.app.model.Accommodation;
import mk.ukim.finki.dians.app.model.User;
import org.springframework.stereotype.Component;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

@Component
public class DataHolder {

    public static List<User> users = new ArrayList<>();
    public static List<Accommodation> accommodations = new ArrayList<>();


   // @PostConstruct
//    public void init() throws FileNotFoundException {
//
//        Accommodation accommodation=new Accommodation(5L, 41.9766582, 21.4087904, "Хотел Водно", "hotel",
//                " https://hotelimakedonija.com.mk/mk/Hotel/57/Hotel-Vodno-Skopje", 2, "email", "phone",
//                "Скопје", "1000", "R2138", "756", "isolated", 8, "yes", "yes",
//                "Општина Карпош");
//        accommodations.add(accommodation);
//        accommodations.add(new Accommodation(6L, 41.9766582, 21.4087904, "Хотел KArposh", "hotel",
//                " https://hotelimakedonija.com.mk/mk/Hotel/57/Hotel-Vodno-Skopje", 2, "email", "phone",
//                "Охрид", "1000", "R2138", "756", "outside", 8, "no", "yes",
//                "Општина Карпош"));
//
//
//        User user1=new User("kostadin.mishev", "km", "Kostadin", "Mishev");
//        user1.setAccommodations(List.of(accommodation));
//        users.add(user1);
//        users.add(new User("riste.stojanov", "rs", "Riste", "Stojanov"));
//
//
//    }

}


