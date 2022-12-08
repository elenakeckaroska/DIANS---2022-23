package mk.ukim.finki.dians.app.web;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mk.ukim.finki.dians.app.model.Accommodation;
import mk.ukim.finki.dians.app.model.User;
import mk.ukim.finki.dians.app.model.WrapperAccommodationUser;
import mk.ukim.finki.dians.app.service.UserService;
import org.springframework.http.ResponseEntity;
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
    public User addFavorite(@RequestParam String username,
                                                           @RequestParam Long accommodationId) {

        return userService.addFavorite(username, accommodationId);
    }
    @PostMapping("/show")
    public ResponseEntity showFavorites(@RequestParam(required = false) String username,
                                        HttpServletRequest request){

        User user = (User) request.getAttribute("user");
        if(user==null)
            user=userService.findByUsername(username).get();
        List<Accommodation> accommodations=new ArrayList<>();
        if(user!=null && user.getAccommodations()!=null){
            accommodations=user.getAccommodations();
        }
        WrapperAccommodationUser wrapper=new WrapperAccommodationUser(user.getUsername(),accommodations);

        return Optional.of(wrapper)
                .map(w -> ResponseEntity.ok().body(w))
                .orElseGet(()->ResponseEntity.badRequest().build());


    }
}
