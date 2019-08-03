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
    # Step 1
    # parses space delimited emails
      # EmailParser.new("avi@test.com arel@test.com").parse #=> ["avi@test.com", "arel@test.com"
    # emails.split()

    # Step 2
    # parses CSV emails
      # EmailParser.new("avi@test.com, arel@test.com").parse #=> ["avi@test.com", "arel@test.com"]
    # Step 3
    # parses both CSV and space delimited emails
      # EmailParser.new(emails).parse #=> ["avi@test.com", "arel@test.com", "test@avi.com", "test@arel.com"]
    # emails.split(',').join.split()

    # Step 4
    # parses and removes duplicate emails
      # EmailParser.new("avi@test.com, avi@test.com" #=> ["avi@test.com"]
    emails.split(',').join.split().uniq

  end
end


=begin
  https://apidock.com/ruby/Array/uniq

  #uniq Returns a new array by removing duplicate values in self

  array = [ "a", "a", "b", "b", "c" ]
  array.uniq   # => ["a", "b", "c"]
=end
