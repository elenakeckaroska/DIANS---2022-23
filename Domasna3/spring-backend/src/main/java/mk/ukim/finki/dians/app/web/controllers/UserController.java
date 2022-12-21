package mk.ukim.finki.dians.app.web.controllers;

import mk.ukim.finki.dians.app.model.Accommodation;
import mk.ukim.finki.dians.app.model.User;
import mk.ukim.finki.dians.app.model.WrapperAccommodationUser;
import mk.ukim.finki.dians.app.service.UserService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/favorites")
@CrossOrigin
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/add")
    public User addFavorite(@RequestParam Long accommodationId, Authentication authentication) {
        String username = (String) authentication.getPrincipal();
        return userService.addFavorite(username, accommodationId);
    }

    @PostMapping("/show")
    public ResponseEntity<?> showFavorites(Authentication authentication) {
        String username = (String) authentication.getPrincipal();
        User user = userService.findByUsername(username)
                .orElseThrow(() -> new RuntimeException("The authenticated user does not exist O_O"));

        List<Accommodation> accommodations = new ArrayList<>();
        if (user.getAccommodations() != null) {
            accommodations = user.getAccommodations();
        }

        WrapperAccommodationUser wrapper = new WrapperAccommodationUser(user.getUsername(), accommodations);

        return Optional.of(wrapper)
                .map(w -> ResponseEntity.ok().body(w))
                .orElseGet(() -> ResponseEntity.badRequest().build());

    }
}
