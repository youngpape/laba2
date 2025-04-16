using System;
using System.Collections.Generic;

class Program
{
    // Функция для подсчёта количества безопасных камней (на которые не садится ни одна птица)
    static int CountSafeStones(int N, int stones, List<int> birds)
    {
        bool[] visited = new bool[stones + 1]; // массив для отслеживания посещённых камней

        // Для каждой птицы помечаем её путь через камни
        foreach (int bird in birds)
        {
            for (int i = bird; i <= stones; i += bird)
            {
                visited[i] = true;
            }
        }

        // Подсчёт камней, которые остались не посещёнными
        int safeCount = 0;
        for (int i = 1; i <= stones; i++)
        {
            if (!visited[i])
            {
                safeCount++;
            }
        }

        return safeCount;
    }

    static void Main()
    {
        Console.Write("Введите количество птиц (N): ");
        int N = int.Parse(Console.ReadLine());

        Console.Write("Введите количество камней (stones): ");
        int stones = int.Parse(Console.ReadLine());

        Console.Write("Введите возможности каждой птицы через пробел: ");
        string[] input = Console.ReadLine().Split(' ');
        List<int> birds = new List<int>();
        for (int i = 0; i < N; i++)
        {
            birds.Add(int.Parse(input[i]));
        }

        int result = CountSafeStones(N, stones, birds);
        Console.WriteLine("Количество камней, которые не посетит ни одна птица: " + result);
    }
}

