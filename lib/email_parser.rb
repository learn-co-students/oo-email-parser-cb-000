# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :emails

  @@all = ""

  def initialize(email_list)
    @@all = email_list
  end

  def parse
    parsed_emails = @@all.split(/[\s ,]/)
    parsed_emails.reject!{|element| element.empty?}
    parsed_emails.uniq!
    parsed_emails
  end
end
