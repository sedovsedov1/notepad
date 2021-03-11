
require_relative 'post'
require_relative 'link'
require_relative 'task'
require_relative 'memo'

puts "Блокнот, версия 1.0"
puts "Выберите тип записи, которую вы хотите создать"

# Все варианты постов
choices = Post.post_types
# Выбранный вариант пользователя
choice = -1

# Пока вариант пользователя больше нуля и меньше размера choises
until choice >= 0 && choice < choices.size
	# Пройти по всем вариантам и вывести пользователю
	choices.each_with_index do |type, index|
		puts "\t #{ index }. #{ type }"
	end
	choice = STDIN.gets.chomp.to_i
end

# Создаем новый пост (какой выбрал пользователя) 
entry = Post.create(choice)
# Спрашиваем у пользователя данные для поста
entry.read_from_console
# Сохраняем пост в файл
entry.save

puts "Success!"
