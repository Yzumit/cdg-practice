def script1
	puts "Введите слово:"
	word = gets.to_s.chomp
	if word.end_with?("CS") == true
		puts 2**word.length
		return 2**word.length
	else
		puts "#{word.reverse}"
		return "#{word.reverse}"
	end
end

def script2
	pokemons = []
	puts "Сколько добавить покемонов?: "
	num = gets.to_i
	while (num > 0)
		puts "Имя покемона: "
		name = gets.chomp
		puts "Цвет покемона: "
		color = gets.chomp
		pokemons << [ "name: " => name, "color: " => color ]
		num -= 1
	end
	puts pokemons
	return pokemons
end

script1
script2
gets