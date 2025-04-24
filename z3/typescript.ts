function processNumbers() {
    const T: number = parseInt(prompt("Введите количество чисел:") || "0");

    for (let i = 0; i < T; i++) {
        const N: number = Math.abs(parseInt(prompt("Введите число:") || "0"));

        let sum = 0;
        let product = 1;

        let num = N;
        while (num > 0) {
            const digit = num % 10;
            sum += digit;      // Добавляем цифру к сумме
            product *= digit;  // Умножаем цифру на произведение
            num = Math.floor(num / 10); // Убираем последнюю цифру из числа
        }

        const difference = Math.abs(sum - product);

        // Выводим результат для текущего числа
        console.log(`Сумма цифр: ${sum}`);
        console.log(`Произведение цифр: ${product}`);
        console.log(`Модуль разности: ${difference}`);
        console.log("---------------------------");
    }
}

processNumbers();

