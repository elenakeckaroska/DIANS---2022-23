package mk.ukim.finki.dians.app.web.controllers;

import mk.ukim.finki.dians.app.exceptions.InvalidArgumentException;
import mk.ukim.finki.dians.app.exceptions.PasswordsDoNotMatchException;
import mk.ukim.finki.dians.app.service.RegistrationService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/register")
@CrossOrigin
public class RegisterController {

    private final RegistrationService registrationService;

    public RegisterController(RegistrationService registrationService) {
        this.registrationService = registrationService;
    }


    @PostMapping
    public ResponseEntity<?> register(@RequestParam String username,
                           @RequestParam String password,
                           @RequestParam String repeatedPassword,
                           @RequestParam String name,
                           @RequestParam String surname){

        try {
            this.registrationService.register(username, password, repeatedPassword, name, surname);
        } catch (InvalidArgumentException invalidArgumentException) {
            return ResponseEntity.internalServerError().body("Invalid arguments");
        } catch (PasswordsDoNotMatchException passwordsDoNotMatchException) {
            return ResponseEntity.internalServerError().body("Passwords do not match");
        }
        return ResponseEntity.ok().build();
    }
}
