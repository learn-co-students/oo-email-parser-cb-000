# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
  def initialize(email_list)
    @emails = []
    @emails << email_list
  end

  def parse
    @emails.map {|element| element.split(", ").map {|element| element.split(" ")}}.flatten.uniq
  end
end
