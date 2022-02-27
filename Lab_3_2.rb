STUDENTS = 'students.txt'
RESULTS = 'results.txt'

 def index
	File.foreach(STUDENTS) { |line| puts line }
end

def find(id)
	File.foreach(STUDENTS).with_index do |line, index|
		puts line if id == index
	end
end

def where(pattern)
	File.foreach(STUDENTS).with_index do |line, index|
		puts @line_index = index if line.include?(pattern)
	end
end

def update(id, text)
	file = File.open(RESULTS, 'w')
	File.foreach(STUDENTS).with_index do |line, index|
		file.puts(id == index ? text : line)
	end
	file.close
	File.write(STUDENTS, File.read(RESULTS))
	File.delete(RESULTS) if File.exist?(RESULTS)
end

def delete(id)
	file = File.open(RESULTS, "w")
	File.foreach(STUDENTS).with_index do |line, index|
		file.puts line if id != index
	end
	file.close
	File.write(STUDENTS, File.read(RESULTS))
	File.delete(RESULTS) if File.exist?(RESULTS)
end

def read
    file = File.open(STUDENTS)
    students = file.readlines.map { |line| line.chomp }
    file.close
    result = []
  
    loop do
		puts "Введите возраст: "
		input = gets.to_i
		break if input == -1
		students.each { |student|
			result.append(student) if student.split(' ')[2].to_i == input
		}
		break if students.length == result.length
	end
  
    file = File.open(RESULTS, 'w')
    result.each { |s|
		puts s
		file.write(s + "\n")
    }
    file.close
end
  
def menu
	loop do
		puts "\nMenu:"
		puts "1. Вывод всех строк файла."
		puts "2. Вывод строки файла."
		puts "3. Вывод данных с заданным патерном."
		puts "4. Обновить строку."
		puts "5. Удалить строку."
		puts "6. Запись и чтение из файла."
		puts "0. Выход.\n"
  
		choose = gets.to_i
		case choose
		when 1
			index
		when 2
			puts "Введите ID: "
			id = gets.to_i
			find(id)
		when 3
			puts "Введите паттерн: "
			pattern = gets
			where(pattern)
		when 4
			puts "Введите ID: "
			id = gets.to_i
			puts "Введите текст: "
			text = gets
			update(id, text)
		when 5
			puts "Введите ID: "
			id = gets.to_i
			delete(id)
		when 6
			read
		when 0
			break
		else
			puts "Неправильно заданная команда."
		end
    end
end

menu