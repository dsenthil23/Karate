import com.intuit.karate.junit5.Karate;


public class TestRunner {
    @Karate.Test
    Karate test() {
        return Karate.run("src/test/java").tags("@smoke");
    }
}
