require 'date'

class Task < Post

	def initialize 						# инициализировать ссылку
		super 									# вызвать inizialize родительского класса
		@die_data = Time.now 		# еще одно поле @die_data (пока) текущее время
	end

	def read_from_console 												# метод "считать задачу с консоли"
		puts "Что надо будет сделать?" 							# 1) выводим подсказку
		@text = STDIN.gets.chomp 										# 2) @text = текст 
		puts "До какого числа надо это сделать?" 		# 3) выводим подсказку 
		input = STDIN.gets.chomp 										# 4) input = дата (строкой) 
		@die_data = Date.parse(input) 							# 5) @die_data = конвертируем в формата data
	end

	def to_strings
		time_string = "Создано: #{ @created_at.strftime("%Y.%m.%d, %H:%M:%S") } \n\r \n\r"
		deadline = "Срок исполнения: #{ @die_data }"
		return [ deadline, @text, time_string ]
	end

end