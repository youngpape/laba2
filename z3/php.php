<?php
echo "Введите количество чисел: ";
$T = (int)trim(fgets(STDIN));

while ($T--) {
    echo "Введите число: ";
    $N = abs((int)trim(fgets(STDIN)));

    $sum = 0;
    $product = 1;

    while ($N > 0) {
        $digit = $N % 10;
        $sum += $digit;      // Добавляем цифру к сумме
        $product *= $digit;  // Умножаем цифру на произведение
        $N = (int)($N / 10); // Убираем последнюю цифру из числа
    }

    $difference = abs($sum - $product);

    // Выводим результат для текущего числа
    echo "Сумма цифр: " . $sum . PHP_EOL;
    echo "Произведение цифр: " . $product . PHP_EOL;
    echo "Модуль разности: " . $difference . PHP_EOL;
    echo "---------------------------" . PHP_EOL;
}
?>

