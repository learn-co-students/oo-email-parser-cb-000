# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  
  @@emails = []
  
  def initialize(emails)
    @@emails = emails.split(/\,+| +/)
    
  end
  
  def parse
    @@emails = @@emails.reject { |element| element.empty? }
    return @@emails.uniq
  end
  
end