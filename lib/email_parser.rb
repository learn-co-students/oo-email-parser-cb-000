# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

  attr_accessor :emails

  def initialize(csv_emails)
    @emails = csv_emails
  end

  def parse
    array = @emails.split(/[\s,]+/)
    array = array.uniq
    array
  end

end
