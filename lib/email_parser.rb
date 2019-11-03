# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def parse
    self.text.split.map {|x| x.chomp(",")}.uniq
  end
end
