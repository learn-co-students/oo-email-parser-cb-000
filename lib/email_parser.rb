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
    
    new_list = []
    new_list = emails.split(/ |\,/)
    new_list.delete_if { |x| x == ""}
    new_list.uniq
  end
  
  
end