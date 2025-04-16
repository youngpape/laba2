const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

let N, stones;
let birds = [];

rl.question("Введите количество птиц (N): ", (n) => {
    N = parseInt(n);

    rl.question("Введите количество камней (stones): ", (s) => {
        stones = parseInt(s);

        rl.question("Введите возможности каждой птицы через пробел: ", (input) => {
            birds = input.trim().split(" ").map(Number);

            const result = countSafeStones(N, stones, birds);
            console.log("Количество камней, которые не посетит ни одна птица: " + result);

            rl.close();
        });
    });
});

// Функция для подсчёта безопасных камней
function countSafeStones(N, stones, birds) {
    const visited = new Array(stones + 1).fill(false);

    for (let bird of birds) {
        for (let i = bird; i <= stones; i += bird) {
            visited[i] = true;
        }
    }

    let safeCount = 0;
    for (let i = 1; i <= stones; i++) {
        if (!visited[i]) {
            safeCount++;
        }
    }

    return safeCount;
}

