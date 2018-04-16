# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

attr_accessor :parser

  def initialize(emails)
    @parser = emails
  end

  def parse
    new_array = @parser.split(/[,\s]/).join(" ").split(" ")
    new_array.uniq
  end


end
