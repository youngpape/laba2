import Foundation

func isPangram(_ sentence: String) -> Bool {
    var letters = Set<Character>()

    for char in sentence.lowercased() {
        if char >= "a" && char <= "z" {
            letters.insert(char)
        }
    }

    return letters.count == 26
}

// Основная часть
print("Введите строку: ", terminator: "")
if let input = readLine() {
    if isPangram(input) {
        print("Вывод: true (является панграммой)")
    } else {
        print("Вывод: false (не является панграммой)")
    }
}

