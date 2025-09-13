import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.AfterAll;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.Date;


public class TestRunner {
    @Karate.Test
    Karate test() {
        return Karate.run("src/test/java");
    }

}
