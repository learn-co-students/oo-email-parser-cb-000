# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email

  def initialize(email_string)

  end

  def self.parse
    email_array = email_list.split(/[\s,]/)
    email_array
  end
end
