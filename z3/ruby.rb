puts "Введите количество чисел:"
T = gets.to_i

T.times do
  puts "Введите число:"
  N = gets.to_i.abs  # Берем абсолютное значение числа

  sum = 0
  product = 1

  while N > 0
    digit = N % 10
    sum += digit       # Добавляем цифру к сумме
    product *= digit   # Умножаем цифру на произведение
    N /= 10            # Убираем последнюю цифру из числа
  end

  difference = (sum - product).abs

  # Выводим результат для текущего числа
  puts "Сумма цифр: #{sum}"
  puts "Произведение цифр: #{product}"
  puts "Модуль разности: #{difference}"
  puts "---------------------------"
end

