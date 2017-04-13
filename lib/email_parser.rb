# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    parsed = @emails.split(/(\s|,)/)
    new_list = parsed.collect do |email|
      email unless email == "" || email == " " || email == ","
    end
    new_list.compact.uniq
  end

end
