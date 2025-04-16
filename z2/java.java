import java.util.HashSet;
import java.util.Scanner;

class Main {
    public static boolean isPangram(String sentence) {
        HashSet<Character> letters = new HashSet<>();

        sentence = sentence.toLowerCase();

        for (char c : sentence.toCharArray()) {
            if (c >= 'a' && c <= 'z') {
                letters.add(c);
            }
        }

        return letters.size() == 26;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите строку: ");
        String input = scanner.nextLine();

        if (isPangram(input)) {
            System.out.println("Вывод: true (является панграммой)");
        } else {
            System.out.println("Вывод: false (не является панграммой)");
        }

        scanner.close();
    }
}

