import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите число: ");
        long N = scanner.nextLong();

        N = Math.abs(N);  // Преобразуем число в положительное значение

        ArrayList<Integer> digits = new ArrayList<>();  // Список для хранения цифр числа

        // Извлекаем цифры числа и сохраняем их в список
        while (N > 0) {
            digits.add((int)(N % 10));
            N /= 10;
        }

        // Вычисляем сумму и произведение цифр
        int sum = 0;
        long product = 1;

        // Индексация идет с 0, то есть первая цифра будет с индексом 0
        for (int digit : digits) {
            sum += digit;  // Суммируем цифры
            product *= digit;  // Умножаем цифры
        }

        long difference = Math.abs(sum - product);  // Модуль разности

        // Выводим результат
        System.out.println("Сумма цифр: " + sum);
        System.out.println("Произведение цифр: " + product);
        System.out.println("Модуль разности: " + difference);
    }
}
