package mk.ukim.finki.dians.app.web;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mk.ukim.finki.dians.app.model.Accommodation;
import mk.ukim.finki.dians.app.model.User;
import mk.ukim.finki.dians.app.model.WrapperAccommodationUser;
import mk.ukim.finki.dians.app.service.AuthService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@RestController
@RequestMapping("/login")
@CrossOrigin
public class LoginController {

    private final AuthService authService;

    public LoginController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping
    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user=this.authService.login(request.getParameter("username"),request.getParameter("password")).get();
        request.setAttribute("user",user);
        RequestDispatcher dispatcher=request.getRequestDispatcher("/favorites/show");
        dispatcher.forward(request,response);

    }
}


