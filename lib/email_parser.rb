# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
#require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(string_emails="")
    @emails = string_emails.split(/ |, |,/).collect {|mail| mail.lstrip}
  end

  def parse
    @emails.uniq
  end

end


#parser = EmailParser.new()
#
#binding.pry
#
#puts parser.parse
