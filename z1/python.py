def count_safe_stones(N, stones, birds):
    visited = [False] * (stones + 1)

    # Для каждой птицы помечаем её путь через камни
    for bird in birds:
        for i in range(bird, stones + 1, bird):
            visited[i] = True

    # Подсчёт камней, которые остались не посещёнными
    safe_count = sum(1 for i in range(1, stones + 1) if not visited[i])
    return safe_count

def main():
    N = int(input("Введите количество птиц (N): "))
    stones = int(input("Введите количество камней (stones): "))
    birds = list(map(int, input("Введите возможности каждой птицы через пробел: ").split()))

    result = count_safe_stones(N, stones, birds)
    print("Количество камней, которые не посетит ни одна птица:", result)

if __name__ == "__main__":
    main()

