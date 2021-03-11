
class Task < Post

	def initialize 						# инициализировать ссылку
		super 									# вызвать inizialize родительского класса
		@die_data = Time.now 		# еще одно поле @die_data (пока) текущее время
	end

	def read_from_console
		# пустой
	end

	def to_strings
		# пустой
	end

end