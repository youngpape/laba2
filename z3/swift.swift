import Foundation

print("Введите количество чисел:")
if let T = Int(readLine()!) {
    for _ in 0..<T {
        print("Введите число:")
        if let input = readLine(), let N = Int64(input) {
            var N = abs(N)

            var sum = 0
            var product: Int64 = 1

            while N > 0 {
                let digit = N % 10
                sum += Int(digit)       // Добавляем цифру к сумме
                product *= digit        // Умножаем цифру на произведение
                N /= 10                 // Убираем последнюю цифру из числа
            }

            let difference = abs(sum - Int(product))

            // Выводим результат для текущего числа
            print("Сумма цифр: \(sum)")
            print("Произведение цифр: \(product)")
            print("Модуль разности: \(difference)")
            print("---------------------------")
        }
    }
}

