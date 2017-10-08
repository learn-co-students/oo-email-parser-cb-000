# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :email_str

  def initialize(email_str)
    @email_str = email_str
  end

  def parse
    if email_str.match(/,? /)
      email_arr = email_str.split(/,? /)
    end
    email_arr.uniq
  end
end
