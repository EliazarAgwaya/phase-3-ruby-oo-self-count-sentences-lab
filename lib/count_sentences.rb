require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with? ("?")
  end

  def exclamation?
    self.end_with? ("!")
  end

  def count_sentences str
    str.split(/.!?]+(?=\s|\z)/).count
    # (str.split(/(\?|\.|!)/)).count()
  end
end
word= String.new
word.sentence?
puts word.count_sentences("My name is Eliazar. I com from Oyugis!")