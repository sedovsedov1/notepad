
class Link < Post

	def initialize 						# инициализировать ссылку
		super 									# вызвать inizialize родительского класса
		@url = '' 							# еще одно поле @url (пока) пустая строка
	end

	def read_from_console
		# пустой
	end

	def to_strings
		# пустой
	end

end