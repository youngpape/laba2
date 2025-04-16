using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        Console.Write("Введите число: ");
        long N = Convert.ToInt64(Console.ReadLine());

        N = Math.Abs(N);  // Преобразуем число в положительное значение

        List<int> digits = new List<int>();  // Список для хранения цифр числа

        // Извлекаем цифры числа и сохраняем их в список
        while (N > 0)
        {
            digits.Add((int)(N % 10));
            N /= 10;
        }

        // Вычисляем сумму и произведение цифр
        int sum = 0;
        long product = 1;

        // Индексация идет с 0, то есть первая цифра будет с индексом 0
        foreach (int digit in digits)
        {
            sum += digit;  // Суммируем цифры
            product *= digit;  // Умножаем цифры
        }

        long difference = Math.Abs(sum - product);  // Модуль разности

        // Выводим результат
        Console.WriteLine("Сумма цифр: " + sum);
        Console.WriteLine("Произведение цифр: " + product);
        Console.WriteLine("Модуль разности: " + difference);
    }
}
