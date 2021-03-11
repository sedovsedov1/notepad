
class Post

	def initialize 															# инициализировать пост
		@created_at = Time.now 										# 1) текущее время
		@text = nil 															# 2) (пока) пустая строка
	end

	def read_from_console												# прочитать данные с консоли
		# пустой
	end

	def to_strings
		# пустой
	end

	def save 																		# сохранить запись в файл
		file = File.new(file_path, "w:UTF-8") 		# file = текстовый файл для записи
		for item in to_string do 									# пробежать по всем строкам массива string
			file.puts(item) 												# запись в файл отдельную запись
		end 																			#
		file.close 																# закрыть файл
	end

	def file_path 															# метод получения текущего каталога
		current_path = File.dirname(__FILE__) 		# каталог читается из окружения
		# имя файла генерится из текущего времени в определенном формате + имя класса-ребенка
		file_name = @created_at.strftime("#{ self.class.name }_%Y-%m-%d_%H-%M-%S.txt")
		return current_path + "/" + file_name
	end

end