<?php

function main() {
    // Ввод числа
    echo "Введите число: ";
    $N = intval(fgets(STDIN));

    $N = abs($N);  // Преобразуем число в положительное значение

    $digits = [];  // Массив для хранения цифр числа

    // Извлекаем цифры числа и сохраняем их в массив
    while ($N > 0) {
        array_push($digits, $N % 10);
        $N = intdiv($N, 10);
    }

    // Вычисляем сумму и произведение цифр
    $sum = array_sum($digits);  // Сумма цифр
    $product = 1;

    foreach ($digits as $digit) {
        $product *= $digit;  // Умножаем цифры
    }

    $difference = abs($sum - $product);  // Модуль разности

    // Выводим результат
    echo "Сумма цифр: " . $sum . "\n";
    echo "Произведение цифр: " . $product . "\n";
    echo "Модуль разности: " . $difference . "\n";
}

main();
