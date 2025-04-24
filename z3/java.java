import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите количество чисел: ");
        int T = scanner.nextInt();

        while (T-- > 0) {
            System.out.print("Введите число: ");
            long N = scanner.nextLong();

            N = Math.abs(N);

            int sum = 0;
            long product = 1;

            while (N > 0) {
                int digit = (int) (N % 10);
                sum += digit;        // Добавляем цифру к сумме
                product *= digit;    // Умножаем цифру на произведение
                N /= 10;             // Убираем последнюю цифру из числа
            }

            long difference = Math.abs(sum - product);

            // Выводим результат для текущего числа
            System.out.println("Сумма цифр: " + sum);
            System.out.println("Произведение цифр: " + product);
            System.out.println("Модуль разности: " + difference);
            System.out

