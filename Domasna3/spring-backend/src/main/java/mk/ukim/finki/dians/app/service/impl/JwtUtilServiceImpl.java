package mk.ukim.finki.dians.app.service.impl;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import mk.ukim.finki.dians.app.service.JwtUtilService;
import org.springframework.http.HttpHeaders;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.Optional;

@Service
public class JwtUtilServiceImpl implements JwtUtilService {

    //TODO: Make secret not visible in code
    private final Algorithm algorithm = Algorithm.HMAC256("Alohomora");

    @Override
    public String generateJwt(UserDetails userDetails) {
        long currentTimeMillis = System.currentTimeMillis();
        return JWT.create()
                .withSubject(userDetails.getUsername())
                .withIssuedAt(new Date(currentTimeMillis))
                .withExpiresAt(new Date(currentTimeMillis + 30 * 60 * 1000))
                .sign(algorithm);
    }

    @Override
    public Optional<String> extractJwt(HttpServletRequest request) {
        String authorizationHeaderValue = request.getHeader(HttpHeaders.AUTHORIZATION);
        return Optional.ofNullable(authorizationHeaderValue)
                .filter(auth -> auth.startsWith("Bearer "))
                .map(auth -> auth.replace("Bearer ", ""));
    }

    @Override
    public DecodedJWT verifyAndDecode(String jwt) {
        try {
            return JWT.require(algorithm).build().verify(jwt);
        } catch (Exception e) {
            return null;
        }
    }

    @Override
    public Authentication convertToAuthToken(DecodedJWT decodedJWT) {
        String username = decodedJWT.getSubject();
        return new UsernamePasswordAuthenticationToken(username, null, null);
    }
}
