
class Link < Post

  	# инициализировать ссылку
	def initialize
		# вызвать inizialize родительского класса
		super
		# еще одно поле @url (пока) пустая строка
		@url = ''
	end

	def read_from_console
		puts "Введите адрес ссылки:"
		@url = STDIN.gets.chomp
		puts "Введите описание ссылки:"
		@text = STDIN.gets.chomp
	end

	def to_strings
		time_string = "Создано: #{ @created_at.strftime("%Y.%m.%d, %H:%M:%S") } \n\r \n\r"
		return [ @url, @text, time_string ]
	end

end
