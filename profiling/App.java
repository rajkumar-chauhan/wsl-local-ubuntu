public class App {
    public static void main(String[] args) throws Exception {
        while (true) {
            work();
            Thread.sleep(500);
        }
    }

    static void work() {
        double x = 0;
        for (int i = 0; i < 2_000_000; i++) {
            x += Math.log(i + 1);
        }
    }
}
