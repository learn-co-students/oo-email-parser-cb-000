# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
  #@@all=[]
  attr_accessor :emails #, :parser 
  
  #def self.all
    #@@all 
  #end 
  
  def initialize(emails)
    @emails = emails
    #@@all << self 
  end 
  
  def parse
    data = emails.split(/\s|,/)
    data.uniq!
    data -= [""] 
  end 
  
end 