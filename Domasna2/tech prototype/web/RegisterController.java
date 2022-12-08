package mk.ukim.finki.dians.app.web;

import mk.ukim.finki.dians.app.exceptions.InvalidArgumentException;
import mk.ukim.finki.dians.app.exceptions.PasswordsDoNotMatchException;
import mk.ukim.finki.dians.app.model.User;
import mk.ukim.finki.dians.app.service.AuthService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/register")
@CrossOrigin
public class RegisterController {

    private final AuthService authService;

    public RegisterController(AuthService authService) {
        this.authService = authService;
    }


    @PostMapping
    public ResponseEntity<String> register(@RequestParam String username,
                           @RequestParam String password,
                           @RequestParam String repeatedPassword,
                           @RequestParam String name,
                           @RequestParam String surname){

        this.authService.register(username, password, repeatedPassword, name, surname);
        return this.authService.login(username,password)
                .map(user -> ResponseEntity.ok().body(user.getUsername()))
                .orElseGet(()->ResponseEntity.badRequest().build());

    }
}
