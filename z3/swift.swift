import Foundation

func main() {
    // Ввод числа
    print("Введите число: ", terminator: "")
    if let input = readLine(), let N = Int64(input) {
        var N = abs(N)  // Преобразуем число в положительное значение

        var digits: [Int] = []  // Массив для хранения цифр числа

        // Извлекаем цифры числа и сохраняем их в массив
        while N > 0 {
            digits.append(Int(N % 10))
            N /= 10
        }

        // Вычисляем сумму и произведение цифр
        let sum = digits.reduce(0, +)  // Сумма цифр
        let product = digits.reduce(1, *)  // Произведение цифр

        let difference = abs(sum - product)  // Модуль разности

        // Выводим результат
        print("Сумма цифр: \(sum)")
        print("Произведение цифр: \(product)")
        print("Модуль разности: \(difference)")
    } else {
        print("Некорректный ввод!")
    }
}

main()
