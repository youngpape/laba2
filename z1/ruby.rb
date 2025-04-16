# Функция для подсчёта количества безопасных камней (на которые не садится ни одна птица)
def count_safe_stones(n, stones, birds)
  visited = Array.new(stones + 1, false)

  # Для каждой птицы помечаем её путь через камни
  birds.each do |bird|
    (bird..stones).step(bird) do |i|
      visited[i] = true
    end
  end

  # Подсчёт камней, которые остались не посещёнными
  safe_count = (1..stones).count { |i| !visited[i] }
  safe_count
end

# Основная программа
print "Введите количество птиц (N): "
n = gets.to_i

print "Введите количество камней (stones): "
stones = gets.to_i

print "Введите возможности каждой птицы через пробел: "
birds = gets.strip.split.map(&:to_i)

result = count_safe_stones(n, stones, birds)
puts "Количество камней, которые не посетит ни одна птица: #{result}"

