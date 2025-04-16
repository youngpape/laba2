#include <iostream>
#include <cmath>
#include <vector>
using namespace std;

int main() {
    long long N;
    cout << "Введите число: ";
    cin >> N;

    N = abs(N);  // Преобразуем число в положительное значение

    vector<int> digits; //массив для хранения цифр числа

    // Извлекаем цифры числа и сохраняем их в массив
    while (N > 0) {
        digits.push_back(N % 10);
        N /= 10;
    }

    // Вычисляем сумму и произведение цифр по индексу
    int sum = 0;
    long long product = 1;

    // Индексация идет с 0, то есть первая цифра будет с индексом 0
    for (int i = 0; i < digits.size(); i++) {
        sum += digits[i];  //суммируем цифры
        product *= digits[i];  //умножаем цифры
    }

    long long difference = abs(sum - product); //моодуль разности

    // Выводим результат
    cout << "Сумма цифр: " << sum << endl;
    cout << "Произведение цифр: " << product << endl;
    cout << "Модуль разности: " << difference << endl;

    return 0;
}
