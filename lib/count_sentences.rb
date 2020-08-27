require 'pry'

class String

  def sentence?
    self.reverse.chr == "."
  end

  def question?
    self.reverse.chr == "?"
  end

  def exclamation?
    self.reverse.chr == "!"
  end

  def count_sentences
    count = 0
    index = 0
    string_to_array = self.split("")
    string_to_array.each do |letter|
      if (string_to_array[index - 1] != letter) && (letter == "." || letter == "?" || letter == "!")
        count += 1
      end

      index += 1
    end
    count
  end
end


