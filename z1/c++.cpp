#include <iostream>
#include <vector>

using namespace std;

// Функция для подсчёта количества безопасных камней (на которые не садится ни одна птица)
int countSafeStones(int N, int stones, const vector<int>& birds) {
    vector<bool> visited(stones + 1, false); // массив для отслеживания посещённых камней

    // Для каждой птицы помечаем её путь через камни
    for (int bird : birds) {
        for (int i = bird; i <= stones; i += bird) {
            visited[i] = true;
        }
    }

    // Подсчёт камней, которые остались не посещёнными
    int safeCount = 0;
    for (int i = 1; i <= stones; ++i) {
        if (!visited[i]) {
            safeCount++;
        }
    }

    return safeCount;
}

int main() {
    int N, stones;
    cout << "Введите количество птиц (N): ";
    cin >> N;

    cout << "Введите количество камней (stones): ";
    cin >> stones;

    vector<int> birds(N);
    cout << "Введите возможности каждой птицы через пробел: ";
    for (int i = 0; i < N; ++i) {
        cin >> birds[i];
    }

    int result = countSafeStones(N, stones, birds);
    cout << "Количество камней, которые не посетит ни одна птица: " << result << endl;

    return 0;
}

