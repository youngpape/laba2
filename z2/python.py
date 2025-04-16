def is_pangram(sentence):
    letters = set()

    for char in sentence.lower():
        if 'a' <= char <= 'z':
            letters.add(char)

    return len(letters) == 26

# Основная часть
input_str = input("Введите строку: ")

if is_pangram(input_str):
    print("Вывод: true (является панграммой)")
else:
    print("Вывод: false (не является панграммой)")

