def main():
    T = int(input("Введите количество чисел: "))

    for _ in range(T):
        N = int(input("Введите число: "))

        N = abs(N)

        sum_digits = 0
        product_digits = 1

        while N > 0:
            digit = N % 10
            sum_digits += digit        # Добавляем цифру к сумме
            product_digits *= digit    # Умножаем цифру на произведение
            N //= 10                   # Убираем последнюю цифру из числа

        difference = abs(sum_digits - product_digits)

        # Выводим результат для текущего числа
        print(f"Сумма цифр: {sum_digits}")
        print(f"Произведение цифр: {product_digits}")
        print(f"Модуль разности: {difference}")
        print("---------------------------")

if __name__ == "__main__":
    main()

