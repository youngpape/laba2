let input: string = "999999999"; // замени на нужное число
let N = Math.abs(parseInt(input)); // Преобразуем в положительное число

let digits: number[] = [];

// Извлекаем цифры и сохраняем в массив
while (N > 0) {
    digits.push(N % 10);
    N = Math.floor(N / 10);
}

// Вычисляем сумму и произведение цифр
let sum = 0;
let product = 1;

for (let i = 0; i < digits.length; i++) {
    sum += digits[i];
    product *= digits[i];
}

let difference = Math.abs(sum - product);

// Вывод результата
console.log("Сумма цифр:", sum);
console.log("Произведение цифр:", product);
console.log("Модуль разности:", difference);

