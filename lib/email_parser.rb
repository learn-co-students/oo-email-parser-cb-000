# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_reader :emails

  def initialize(email_string)
    @emails = email_string
  end

  def parse
    parsed = @emails.split(/[,\s]/).map!(&:strip)
    parsed.reject!(&:empty?)
    parsed.uniq
  end

end