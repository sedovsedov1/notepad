
class Post

  # метод "вернуть все типы записей"
  def self.post_types
  # возвращает массив вариантов                  
    [Memo,Task,Link]
  end

  # метод "создать запись"
	def self.create(type_index)
   	# вызывает метод "вернуть все записи" от выбранного индекса и вызвать для него new
		post_types[type_index].new
	end

  	# инициализировать пост
	def initialize
    		# 1) текущее время
		@created_at = Time.now
    		# 2) (пока) пустой массив
		@text = []
	end

  	# прочитать данные с консоли
	def read_from_console
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

	def file_path
		current_path = File.dirname(__FILE__)
		# имя файла генерится из текущего времени в определенном формате + имя класса-ребенка
		file_name = @created_at.strftime("#{ self.class.name }_%Y-%m-%d_%H-%M-%S.txt")
		current_path + "/" + file_name
	end

end
