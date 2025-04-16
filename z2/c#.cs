using System;
using System.Collections.Generic;

class Program
{
    static bool IsPangram(string sentence)
    {
        HashSet<char> letters = new HashSet<char>();

        foreach (char c in sentence.ToLower())
        {
            if (c >= 'a' && c <= 'z')
            {
                letters.Add(c);
            }
        }

        return letters.Count == 26;
    }

    static void Main()
    {
        Console.Write("Введите строку: ");
        string input = Console.ReadLine();

        if (IsPangram(input))
        {
            Console.WriteLine("Вывод: true (является панграммой)");
        }
        else
        {
            Console.WriteLine("Вывод: false (не является панграммой)");
        }
    }
}

