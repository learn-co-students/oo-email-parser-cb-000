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
    result = []
    @emails.split(' ').each do |string|
      if string[-1] == ','
        result << string[0..-2]
      else
      result << string
      end
    end
    result.uniq
  end

end
