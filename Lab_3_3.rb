def cashmachine
	if File.exist?("balance.txt")
		f = File.open("balance.txt")
		balance = f.read.to_f
		f.close
    end
	
	loop do
		puts "\nB - Показать баланс"
		puts "W - Снять наличные"
		puts "D - Внести наличные"
		puts "Q - Выйти"
		choose = gets.chomp
  
		case choose.upcase
		when "B"
			puts "Ваш баланс: #{balance}"
		when "W"
			puts "Введите сумму для снятия: "
			money_output = gets.to_f
			if money_output <= 0
				puts "Сумма снятия должна быть больше 0"
			elsif money_output > balance
				puts "Недостаточно денег на балансе"
			else
				balance -= money_output
				puts "Ваш баланс: #{balance}"
			end
			f = File.open('balance.txt', 'w')
			f.write(balance)
			f.close
		when "D"
			puts "Введите сумму депозита: "
			money_input = gets.to_f
			if money_input <= 0
				puts "Сумма депозита должна быть больше 0"
			else
				balance += money_input
				puts "Ваш баланс: #{balance}"
				f = File.open('balance.txt', 'w')
				f.write(balance)
				f.close
			end
		when "Q"
			f = File.open('balance.txt', 'w')
			f.write(balance)
			f.close
			break
		else
			puts "Неправильно заданная команда"
		end
    end
end

cashmachine