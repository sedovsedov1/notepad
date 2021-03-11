require 'date'

class Task < Post

	# инициализировать ссылку
	def initialize
		# вызвать inizialize родительского класса
		super
		# еще одно поле @die_data (пока) текущее время
		@die_data = Time.now
	end

	# метод "считать задачу с консоли"
	def read_from_console	
	# 1) выводим подсказку						
		puts "Что надо будет сделать?"
		# 2) @text = текст					
		@text = STDIN.gets.chomp
		# 3) выводим подсказку									 
		puts "До какого числа надо это сделать?"
		# 4) input = дата (строкой) 
		input = STDIN.gets.chomp
		# 5) @die_data = конвертируем в формата data 
		@die_data = Date.parse(input)
	end

	def to_strings
		time_string = "Создано: #{ @created_at.strftime("%Y.%m.%d, %H:%M:%S") } \n\r \n\r"
		deadline = "Срок исполнения: #{ @die_data }"
		return [ deadline, @text, time_string ]
	end

end