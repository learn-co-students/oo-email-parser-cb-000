# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(email_string)
    self.emails = email_string
  end

  def parse()
    returned_list = Array.new
    self.emails.split(/,? /).each{ |email|
      returned_list << email if !returned_list.include?(email)
    }
    return returned_list
  end
end
