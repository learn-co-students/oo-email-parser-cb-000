# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email
  @@email_list = []

  def initialize(email_string)
    email_string = self.new
    email_list << email_string
  end

  def self.parse
    email_array = email_list.split(/[\s,]/)
    email_array
  end

  def self.email_list
    @@email_list
  end
end
