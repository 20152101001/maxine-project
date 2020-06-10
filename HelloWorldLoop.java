
public class HelloWorldLoop {
    public static void main(String[] args) {
        System.out.println("Hello World!");

        int i = 0;
        while (i < 1000000) {
            i = increment(i);
        }

        System.out.println(i);
    }

    private static int increment(int i) {
        return i + 1;
    }
}
