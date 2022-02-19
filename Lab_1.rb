# coding: utf-8

def greeting
  puts "Введите свое имя:"
  name = gets.to_s.chomp
  puts "Введите свою фамилию:"
  second_name = gets.to_s.chomp
  puts "Введите свой возраст:"
  age = gets.to_i
  if age < 18
    puts "Привет, #{name} #{second_name}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано."
	return "Привет, #{name} #{second_name}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано."
  else
    puts "Привет, #{name} #{second_name}. Самое время заняться делом!"
	return "Привет, #{name} #{second_name}. Самое время заняться делом!"
  end
end

def foobar
  puts "Введите первое число: "
  x = gets.to_i
  puts "Введите второе число: "
  y = gets.to_i
  if x == 20 or y == 20
    puts y
	return y
  else
    puts x + y
	return x + y
  end
end

greeting
foobar
gets