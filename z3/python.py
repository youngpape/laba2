def main():
    N = int(input("Введите число: "))

    N = abs(N)  # Преобразуем число в положительное значение

    digits = []  # Список для хранения цифр числа

    # Извлекаем цифры числа и сохраняем их в список
    while N > 0:
        digits.append(N % 10)
        N //= 10

    # Вычисляем сумму и произведение цифр
    sum_digits = sum(digits)  # Сумма цифр
    product = 1
    for digit in digits:
        product *= digit  # Произведение цифр

    difference = abs(sum_digits - product)  # Модуль разности
    
    # Выводим результат
    print(f"Сумма цифр: {sum_digits}")
    print(f"Произведение цифр: {product}")
    print(f"Модуль разности: {difference}")

if __name__ == "__main__": 
    main()
