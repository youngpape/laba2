# Задания по решению задач

В этом репозитории представлены решения для различных задач. Каждое задание сопровождается примером и объяснением.

---

## Task 1: Подсчёт разницы между суммой и произведением цифр

### Условие:
Для заданного натурального числа N вычислите сумму его цифр и произведение его цифр, затем найдите модуль разности между этими значениями.

### Пример:

Пример: 3 324 423 500

Результат:
9 24 15 (2+3+4=9; 234=24; |9-24|=15)
9 24 15 (4+2+3=9; 423=24; |9-24|=15)
5 0 5 (5+0+0=5; 500=0; |5-0|=5)

---

## Task 2: Проверка на панграмму

### Условие:
Панграмма — короткий текст, использующий все или почти все буквы алфавита, по возможности не повторяя их. Учитывая строку `sentence`, содержащую только строчные буквы латинского алфавита, вернуть `true`, если это панграмма, иначе `false`.

### Примеры:

Пример 1:
Input: thequickbrownfoxjumpsoverthelazydog
Output: true

Пример 2:
Input: whatdoesthefoxsay
Output: false

Пример 3:
Input: the five boxing wizards jump quickly
Output: true

Пример 4:
Input: the five boxing wizards jump quickly
Output: true

Пример 5:
Input: how vexingly quick daft zebras jump
Output: true

Пример 6:
Input: the jay, pig, fox, zebra and my wolves quack
Output: true

Пример 7:
Input: how vexingly quick daft zebras jump
Output: true

### Ограничения:
- Длина строки ограничена **1000**
- Строка состоит из **строчных английских букв**

---

## Task 3: Птицы и валуны

### Условие:
Поперёк реки находятся N валунов. Стая птиц хочет перебраться с одного берега на другой. Каждая `i`-ая птица может за раз преодолеть расстояние `birds[i]`. Например, птица за раз может перелететь 2 валуна — значит её путь будет состоять из 2, 4, 6… валунов.

Необходимо найти количество валунов, на которых **не появится ни одной птицы** за всё время пересечения реки.

### Примеры:

Пример 1:
N = 2, stones = 6, birds[] = {3, 2}
Результат: 2 (1 и 5 валуны)

Пример 2:
N = 2, stones = 6, birds[] = {5, 1}
Результат: 0 (вторая птица посетит каждый камень)
