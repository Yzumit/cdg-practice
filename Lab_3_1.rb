FILE = "students.txt"
BUFFER = "buf.txt"

 def index
	File.foreach(FILE) { |line| puts line }
end

def find(id)
	File.foreach(FILE).with_index do |line, index|
		puts line if id == index
	end
end

def where(pattern)
	File.foreach(FILE).with_index do |line, index|
		puts @line_index = index if line.include?(pattern)
	end
end

 def update(id, text)
	file = File.open(BUFFER, 'w')
	File.foreach(FILE).with_index do |line, index|
		file.puts(id == index ? text : line)
	end
	file.close
	File.write(FILE, File.read(BUFFER))
	File.delete(BUFFER) if File.exist?(BUFFER)
end

def delete(id)
	file = File.open(BUFFER, "w")
	File.foreach(FILE).with_index do |line, index|
		file.puts line if id != index
	end
	file.close
	File.write(FILE, File.read(BUFFER))
	File.delete(BUFFER) if File.exist?(BUFFER)
end

puts "Метод index:"
index
puts "\nМетод find():"
find(5)
puts "\nМетод where():"
where("22")
puts
update(2, "Yroshenko")
puts "После обновления строки:"
index
puts
delete(2)
puts "После удаления строки:"
index