<?php

function isPangram($sentence) {
    $letters = [];

    $sentence = strtolower($sentence);

    for ($i = 0; $i < strlen($sentence); $i++) {
        $char = $sentence[$i];
        if ($char >= 'a' && $char <= 'z') {
            $letters[$char] = true;
        }
    }

    return count($letters) === 26;
}

// Основной блок
echo "Введите строку: ";
$input = trim(fgets(STDIN));

if (isPangram($input)) {
    echo "Вывод: true (является панграммой)\n";
} else {
    echo "Вывод: false (не является панграммой)\n";
}
?>

