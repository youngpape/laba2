#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int T;
    cout << "Введите количество чисел: ";
    cin >> T;

    while (T--) {
        long long N;
        cout << "Введите число: ";
        cin >> N;

        N = abs(N);

        int sum = 0;
        long long product = 1;


        while (N > 0) {
            int digit = N % 10;
            sum += digit;        // Добавляем цифру к сумме
            product *= digit;    // Умножаем цифру на произведение
            N /= 10;             // Убираем последнюю цифру из числа
        }

        long long difference = abs(sum - product);

        // Выводим результат для текущего числа
        cout << "Сумма цифр: " << sum << endl;
        cout << "Произведение цифр: " << product << endl;
        cout << "Модуль разности: " << difference << endl;
        cout << "---------------------------" << endl;
    }

    return 0;
}
