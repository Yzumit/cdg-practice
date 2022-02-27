def one (word)
    if word =~ /CS$/ # Если слово заканчивается на "CS"
        2**word.length
    else
        word.reverse
    end
end

def two()
    puts ("Сколько покемонов?")
    number = gets.to_i
    pokemon = Hash.new
    number.times do
    puts("Введите имя")
    name = gets.chomp
    puts("Введите цвет")
    color = gets.chomp
    pokemon[name] = color
    end
    puts(pokemon)
end

def menu
    loop do
        puts("Введите 1 для проверки работы первого задания")
        puts("Введите 2 для проверки работы второго задания")
        puts("Введите отрицательное число для выхода из программы")
        number = gets.to_i

        if number == 1
            puts ("Введите строку")
            input = gets.chomp
            input = input.split(" ")
            one(input[1])
        end

        if number == 2
        two()
        end

        break if number < 0

    end
end

menu
