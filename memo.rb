
class Memo < Post

	# initialize писать не надо, memo идентичен классу post
	# initialize родительского класса будет вызван автоматически

	def read_from_console                                 # метод "считать заметку с консоли"
		puts "Ввод новой заметки (текст до строки `end`)"   # 1) выводим подсказку
		@text = []                                          # 2) @text = пустой массив
		line = nil                                          # 3) заводим переменную для строки
		while line != "end" do                              # 4) пока строка != `end` 
			line = STDIN.gets.chomp                           # 5) принимаем строку
			@text << line                                     # 6) добавляем ее в свойство класса
		end
		@text.pop                                           # 7) удаляем крайнюю строку = `end`
	end

	def to_strings
		# Создем вспомогательную строку когда создан массив записей
		time_string = "Создано: #{ @created_at.strftime("%Y.%m.%d, %H:%M:%S") }"
		# Возвращам массив записей с первой строкой (см. выше)
		return @text.unshift(time_string)
	end

end