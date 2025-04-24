using System;

class Program
{
    static void Main()
    {
        Console.Write("Введите количество чисел: ");
        int T = int.Parse(Console.ReadLine());

        while (T-- > 0)
        {
            Console.Write("Введите число: ");
            long N = long.Parse(Console.ReadLine());

            N = Math.Abs(N);

            int sum = 0;
            long product = 1;

            while (N > 0)
            {
                int digit = (int)(N % 10);
                sum += digit;        // Добавляем цифру к сумме
                product *= digit;    // Умножаем цифру на произведение
                N /= 10;             // Убираем последнюю цифру из числа
            }

            long difference = Math.Abs(sum - product);

            // Выводим результат для текущего числа
            Console.WriteLine($"Сумма цифр: {sum}");
            Console.WriteLine($"Произведение цифр: {product}");
            Console.WriteLine($"Модуль разности: {difference}");
            Console.WriteLine("---------------------------");
        }
    }
}

