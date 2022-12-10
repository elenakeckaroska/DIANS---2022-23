package mk.ukim.finki.dians.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@ServletComponentScan
public class DiansApplication {

    public static void main(String[] args) {
        SpringApplication.run(DiansApplication.class, args);
    }

}
