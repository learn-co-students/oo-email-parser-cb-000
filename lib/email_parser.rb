# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  
  @@all = []
  
  def initialize(emails)
    @@all.clear
    emails_arr = emails.split(/[ ,]/)
    emails_arr.each {|email| @@all << email if email.include?('@')}
  end
  
  def parse
    result = []
    @@all.each {|email| result << email if !result.include?(email)}
    result
  end

end

#emails = "john@doe.com, person@somewhere.org"
#parser = EmailParser.new(emails)
#puts parser.parse.inspect
# => ["john@doe.com", "person@somewhere.org"]