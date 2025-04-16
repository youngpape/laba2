import java.util.Scanner;

public class Main {

    public static int countSafeStones(int n, int stones, int[] birds) {
        boolean[] visited = new boolean[stones + 1];

        for (int bird : birds) {
            for (int i = bird; i <= stones; i += bird) {
                visited[i] = true;
            }
        }

        int safeCount = 0;
        for (int i = 1; i <= stones; i++) {
            if (!visited[i]) {
                safeCount++;
            }
        }

        return safeCount;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите количество птиц (N): ");
        int n = scanner.nextInt();

        System.out.print("Введите количество камней (stones): ");
        int stones = scanner.nextInt();

        int[] birds = new int[n];
        System.out.print("Введите возможности каждой птицы через пробел: ");
        for (int i = 0; i < n; i++) {
            birds[i] = scanner.nextInt();
        }

        int result = countSafeStones(n, stones, birds);
        System.out.println("Количество камней, которые не посетит ни одна птица: " + result);
    }
}

