// Входные данные
let N: number = 2; // количество птиц
let stones: number = 6; // количество камней
let birds: number[] = [5, 1]; // каждая птица садится на кратные номера камней

function countSafeStones(N: number, stones: number, birds: number[]): number {
    let visited: boolean[] = new Array(stones + 1).fill(false);

    // Помечаем камни, на которые садятся птицы
    for (let bird of birds) {
        for (let i = bird; i <= stones; i += bird) {
            visited[i] = true;
        }
    }

    // Считаем камни, на которые не садится ни одна птица
    let safeCount = 0;
    for (let i = 1; i <= stones; i++) {
        if (!visited[i]) {
            safeCount++;
        }
    }

    return safeCount;
}

let result = countSafeStones(N, stones, birds);
console.log("Количество камней, которые не посетит ни одна птица:", result);

