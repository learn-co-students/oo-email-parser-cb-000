# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end


  def parse
    #split by " " first then map over
    emails.split.map do |email|
      #split again if there is any by ,
      email.split(',')
    end.flatten.uniq

    #the flatten puts all values of nested arrays into a single array
    #.uniq removes all duplicates

  end

end
