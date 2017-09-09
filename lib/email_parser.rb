# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser
  attr_accessor :emails
    @@emails = ""
  def initialize(emails)
    #binding.pry
    @@emails = emails
  end

  def parse
    #binding.pry
    @@emails = @@emails.split(/[\s,]/)
    @@emails.delete("")
    @@emails.uniq
  end
end
