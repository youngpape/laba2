import Foundation

// Функция для подсчёта количества безопасных камней (на которые не садится ни одна птица)
func countSafeStones(n: Int, stones: Int, birds: [Int]) -> Int {
    var visited = Array(repeating: false, count: stones + 1)

    // Для каждой птицы помечаем её путь через камни
    for bird in birds {
        var i = bird
        while i <= stones {
            visited[i] = true
            i += bird
        }
    }

    // Подсчёт камней, которые остались не посещёнными
    var safeCount = 0
    for i in 1...stones {
        if !visited[i] {
            safeCount += 1
        }
    }

    return safeCount
}

// Основная программа
print("Введите количество птиц (N): ", terminator: "")
guard let nStr = readLine(), let n = Int(nStr) else {
    print("Некорректный ввод N"); exit(1)
}

print("Введите количество камней (stones): ", terminator: "")
guard let stonesStr = readLine(), let stones = Int(stonesStr) else {
    print("Некорректный ввод количества камней"); exit(1)
}

print("Введите возможности каждой птицы через пробел: ", terminator: "")
guard let birdsStr = readLine() else {
    print("Некорректный ввод списка"); exit(1)
}

let birds = birdsStr
    .split(separator: " ")
    .compactMap { Int($0) }

if birds.count != n {
    print("Ожидалось \(n) значений, но получено \(birds.count)"); exit(1)
}

let result = countSafeStones(n: n, stones: stones, birds: birds)
print("Количество камней, которые не посетит ни одна птица: \(result)")

