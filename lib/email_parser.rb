# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :raw_list

  def initialize raw_list
    @raw_list = raw_list
    self.parse
  end

  def parse
    @raw_list.gsub(",","").split.uniq
  end
end
