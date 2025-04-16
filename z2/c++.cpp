#include <iostream>
#include <string>
#include <unordered_set>

using namespace std;

bool isPangram(const string& sentence) {
    unordered_set<char> letters;

    for (char c : sentence) {
        if (c >= 'a' && c <= 'z') {
            letters.insert(c);
        }
    }

    return letters.size() == 26;
}

int main() {
    string input;
    cout << "Введите строку: ";
    getline(cin, input);

    if (isPangram(input)) {
        cout << "Вывод: true(является панграммой)" << endl;
    } else {
        cout << "Вывод: false(не является панграммой)" << endl;
    }

    return 0;
}

