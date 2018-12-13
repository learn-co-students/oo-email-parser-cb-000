# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
  def initialize(data)
    @emails = data
  end

  def parse
    comma = @emails.split(", ")
    rerun = comma.join(" ")
    space = rerun.split(" ")
    return space.uniq
  end

end
emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
puts EmailParser.new(emails).parse
