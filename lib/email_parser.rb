# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser


  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
  parsed_list = []
  list = @emails.split(", ")
  string = list.join(" ")
  list = string.split(" ")
    list.each do |email|
      if parsed_list .include?(email) == false
        parsed_list << email
      end
    end
  parsed_list
  end

end
