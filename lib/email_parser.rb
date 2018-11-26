# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :list_of_emails

  def initialize(list_of_emails)

    @list_of_emails =  list_of_emails

  end

  def parse()
    #puts "#{@list_of_emails.gsub(", ", " ")}"
    list = []
    list = @list_of_emails.gsub(", ", " ").split(" ")
    list.uniq
  end


end


EmailParser.new("avi@test.com, arel@test.com test@avi.com, test@arel.com").parse
