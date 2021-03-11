
class Memo < Post

	# initialize писать не надо, memo идентичен классу post
	# initialize родительского класса будет вызван автоматически

	# метод "считать заметку с консоли"
	def read_from_console
		# 1) выводим подсказку            
		puts "Ввод новой заметки (текст до строки `end`)"
		# 2) @text = пустой массив
		@text = []      
		# 3) заводим переменную для строки                                    
		line = nil
		# 4) пока строка != `end`                                   
		while line != "end" do
			# 5) принимаем строку                              
			line = STDIN.gets.chomp
			# 6) добавляем ее в свойство класса                         
			@text << line
		end
		# 7) удаляем крайнюю строку = `end`
		@text.pop                 
	end

	def to_strings
		# Создем вспомогательную строку когда создан массив записей
		time_string = "Создано: #{ @created_at.strftime("%Y.%m.%d, %H:%M:%S") }"
		# Возвращам массив записей с первой строкой (см. выше)
		return @text.unshift(time_string)
	end

end