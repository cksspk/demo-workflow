package example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author caikaisheng .
 */
@SpringBootApplication
@RestController
public class JenkinsApp {

    public static void main(String[] args) {
        SpringApplication.run(JenkinsApp.class, args);
    }

    @GetMapping("/")
    public String hi() {
        return "hi, github  workflows";
    }
}
