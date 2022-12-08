package mk.ukim.finki.dians.app.web;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/logout")
@CrossOrigin
public class LogoutController {

    @PostMapping
    public void logout(HttpServletRequest request)
    {
        request.getSession().invalidate();
    }
}
