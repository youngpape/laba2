importPackage(java.io);
importPackage(java.lang);

function isPangram(sentence) {
    var letters = {};

    sentence = sentence.toLowerCase();
    sentence = sentence.replaceAll("[^a-z]", ""); // используем Java-метод

    for (var i = 0; i < sentence.length(); i++) {
        var char = sentence.charAt(i);
        letters[char] = true;
    }

    var count = 0;
    for (var key in letters) {
        count++;
    }

    return count === 26;
}

// Чтение строки
var reader = new BufferedReader(new InputStreamReader(System['in']));
System.out.print("Введите строку: ");
var input = reader.readLine();

if (isPangram(input)) {
    print("Вывод: true (является панграммой)");
} else {
    print("Вывод: false (не является панграммой)");
}

