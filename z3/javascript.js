// Создаем объект для ввода с консоли
var scanner = new java.util.Scanner(java.lang.System.in);

// Получаем ввод от пользователя
print("Введите число: ");
var N = parseInt(scanner.nextLine());

// Преобразуем число в положительное значение
N = Math.abs(N);

// Массив для хранения цифр числа
var digits = [];

// Извлекаем цифры числа и сохраняем их в массив
while (N > 0) {
    digits.push(N % 10);
    N = Math.floor(N / 10);
}

// Вычисляем сумму и произведение цифр
var sum = 0;
var product = 1;

// Индексация идет с 0, то есть первая цифра будет с индексом 0
for (var i = 0; i < digits.length; i++) {
    sum += digits[i];  // Суммируем цифры
    product *= digits[i];  // Умножаем цифры
}

var difference = Math.abs(sum - product);  // Модуль разности

// Выводим результат
print("Сумма цифр: " + sum);
print("Произведение цифр: " + product);
print("Модуль разности: " + difference);
