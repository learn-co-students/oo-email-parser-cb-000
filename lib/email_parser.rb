# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
 attr_accessor :emails
 
 def initialize(emails) 
   @emails = emails
 end
 
  def parse()
    comma_array = emails.split(',')
    both_array = comma_array.join.split(' ')
    unique_emails = both_array.uniq
  end
  
  
  
  
end