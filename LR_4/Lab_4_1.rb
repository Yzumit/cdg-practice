class CashMachine
	
	 def initialize
		if File.exist?("balance.txt")
			f = File.open("balance.txt")
			@balance = f.read.to_f
			f.close
		end
	end
	
	 def balance
		puts "Ваш баланс: #{@balance}"
	end
	
	 def withdraw(money_output)
		if money_output <= 0
			puts "Сумма снятия должна быть больше 0"
		elsif money_output > @balance
			puts "Недостаточно денег на балансе"
		else
			@balance -= money_output
			puts "Ваш баланс: #{@balance}"
		end
		f = File.open('balance.txt', 'w')
		f.write(@balance)
		f.close
	end
	
	def deposit(money_input)
		if money_input <= 0
			puts "Сумма депозита должна быть больше 0"
		else
			@balance += money_input
			puts "Ваш баланс: #{@balance}"
			f = File.open('balance.txt', 'w')
			f.write(@balance)
			f.close
		end
	end
	
	def quit
		f = File.open('balance.txt', 'w')
		f.write(@balance)
		f.close
	end
	
	def self.init
		cash_machine = CashMachine.new
		
		loop do
			puts "\nB - Показать баланс"
			puts "W - Снять наличные"
			puts "D - Внести наличные"
			puts "Q - Выйти"
			choose = gets.chomp
			
			case choose.upcase
			when "B"
				cash_machine.balance
			when "W"
				puts "Введите сумму для снятия: "
				cash_machine.withdraw(gets.to_f)
			when "D"
				puts "Введите сумму депозита: "
				cash_machine.deposit(gets.to_f)
			when "Q"
				cash_machine.quit
				break
			else
				puts "Неправильно заданная команда"
			end
		end
	end
end

CashMachine.init