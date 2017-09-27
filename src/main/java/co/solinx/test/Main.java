package co.solinx.test;

public class Main {

    public static void main(String[] args) {

        while (true) {
            try {

                System.out.println("main");
                Thread.sleep(2000);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

}
