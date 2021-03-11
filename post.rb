
class Post

  def self.post_types                         # метод "вернуть все типы записей" 
    [Memo,Task,Link]                          # возвращает массив вариантов
  end

	def self.create(type_index)                 # метод "создать запись"
		post_types[type_index].new                # вызывает метод "вернуть все записи" от выбранного индекса и вызвать для него new
	end

	def initialize 															# инициализировать пост
		@created_at = Time.now 										# 1) текущее время
		@text = [] 															  # 2) (пока) пустая строка
	end

	def read_from_console												# прочитать данные с консоли
		# пустой
	end

	def to_strings
		# пустой
	end

  def save
    file = File.new(file_path, 'w:UTF-8')
    to_strings.each { |string| file.puts(string) }
    file.close
  end


	def file_path 															# метод получения текущего каталога
		current_path = File.dirname(__FILE__) 		# каталог читается из окружения
		# имя файла генерится из текущего времени в определенном формате + имя класса-ребенка
		file_name = @created_at.strftime("#{ self.class.name }_%Y-%m-%d_%H-%M-%S.txt")
		current_path + "/" + file_name
	end

end