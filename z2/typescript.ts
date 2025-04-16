let input: string = "qwertyt"; // можно заменить на свою строку

function isPangram(sentence: string): boolean {
    const letters = new Set<string>();

    for (let char of sentence.toLowerCase()) {
        if (char >= 'a' && char <= 'z') {
            letters.add(char);
        }
    }

    return letters.size === 26;
}

if (isPangram(input)) {
    console.log("Вывод: true (является панграммой)");
} else {
    console.log("Вывод: false (не является панграммой)");
}

