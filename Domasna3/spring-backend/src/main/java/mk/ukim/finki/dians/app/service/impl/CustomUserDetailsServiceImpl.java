package mk.ukim.finki.dians.app.service.impl;

import lombok.RequiredArgsConstructor;
import mk.ukim.finki.dians.app.repository.jpa.UserRepository;
import mk.ukim.finki.dians.app.service.CustomUserDetailsService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CustomUserDetailsServiceImpl implements CustomUserDetailsService {

    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepository.findByUsername(username)
                .orElseThrow(() -> new RuntimeException("User with username : " + username + " does not exist!"));
    }
}
