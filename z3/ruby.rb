def main
  print "Введите число: "
  n = gets.to_i  # Получаем число

  n = n.abs  # Преобразуем число в положительное значение

  digits = []  # Массив для хранения цифр числа

  # Извлекаем цифры числа и сохраняем их в массив
  while n > 0
    digits.push(n % 10)
    n /= 10
  end

  # Вычисляем сумму и произведение цифр
  sum = digits.sum  # Сумма цифр
  product = digits.inject(1) { |prod, digit| prod * digit }  # Произведение цифр

  difference = (sum - product).abs  # Модуль разности

  # Выводим результат
  puts "Сумма цифр: #{sum}"
  puts "Произведение цифр: #{product}"
  puts "Модуль разности: #{difference}"
end

main
