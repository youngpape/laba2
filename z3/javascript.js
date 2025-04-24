function processNumbers() {
    const T = parseInt(prompt("Введите количество чисел:"));

    for (let i = 0; i < T; i++) {
        const N = Math.abs(parseInt(prompt("Введите число:")));

        let sum = 0;
        let product = 1;

        let num = N;
        while (num > 0) {
            let digit = num % 10;
            sum += digit;      // Добавляем цифру к сумме
            product *= digit;  // Умножаем цифру на произведение
            num = Math.floor(num / 10); // Убираем последнюю цифру из числа
        }

        let difference = Math.abs(sum - product);

        // Выводим результат для текущего числа
        console.log("Сумма цифр: " + sum);
        console.log("Произведение цифр: " + product);
        console.log("Модуль разности: " + difference);
        console.log("---------------------------");
    }
}

processNumbers();

