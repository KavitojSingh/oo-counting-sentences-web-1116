require 'pry'

class String

  def sentence?
  	self.end_with?(".")
  end

  def question?
  	self.end_with?("?")
  end

  def exclamation?
  	self.end_with?("!")
  end

  def count_sentences
  	new_string = self.gsub("?", ".")
	second_string = new_string.gsub("!", ".")
	first_array = second_string.split(".")
	second_array = first_array - [""]
	second_array.count
  end
end

