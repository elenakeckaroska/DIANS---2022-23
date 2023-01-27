package mk.ukim.finki.dians.app.service;

import com.auth0.jwt.interfaces.DecodedJWT;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

public interface JwtUtilService {

    public String generateJwt(UserDetails userDetails);

    Optional<String> extractJwt(HttpServletRequest request);

    DecodedJWT verifyAndDecode(String jwt);

    Authentication convertToAuthToken(DecodedJWT decodedJWT);
}
