package control;

public class Test {

    public void sf() {

        int total = 0;

        int shi = 0;
        int shijiao = 0;
        for (int i = 0; i < 24; i++) {
            for (int j = 1; j < 61; j++) {
                if (j % 12 == 0) {
                    shi++;
                    shijiao = shi * 6;
                }
                int fenjiao = 6 * j;
                if (shijiao - fenjiao == 90 || fenjiao - shijiao == 90) {
                    System.out.println(shi + "时格" + j + "分格");
                    total++;
                }

            }

            if (i == 11) shi = 0;

        }


        System.out.println("一天 " + total + " 次");
    }

    public static void main(String[] args) {
        new Test().sf();
    }

}
