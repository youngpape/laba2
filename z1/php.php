<?php

// Функция для подсчёта количества безопасных камней (на которые не садится ни одна птица)
function countSafeStones(int $n, int $stones, array $birds): int {
    $visited = array_fill(0, $stones + 1, false); // массив для отслеживания посещённых камней

    // Для каждой птицы помечаем её путь через камни
    foreach ($birds as $bird) {
        for ($i = $bird; $i <= $stones; $i += $bird) {
            $visited[$i] = true;
        }
    }

    // Подсчёт камней, которые остались не посещёнными
    $safeCount = 0;
    for ($i = 1; $i <= $stones; $i++) {
        if (!$visited[$i]) {
            $safeCount++;
        }
    }

    return $safeCount;
}

// Основная программа
echo "Введите количество птиц (N): ";
$N = (int)trim(fgets(STDIN));

echo "Введите количество камней (stones): ";
$stones = (int)trim(fgets(STDIN));

echo "Введите возможности каждой птицы через пробел: ";
$birdsInput = trim(fgets(STDIN));
$birds = array_map('intval', explode(' ', $birdsInput));

$result = countSafeStones($N, $stones, $birds);
echo "Количество камней, которые не посетит ни одна птица: $result\n";

