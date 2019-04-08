# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  def initialize(input_string)
    @parse_array = []
    redundancy_checker = {}
    no_spaces_array = input_string.split(" ")
    no_spaces_array.each {|email|
      if email.scan(/,$/) != nil && redundancy_checker[email.split(",")[0]] == nil
        fixed = email.split(",")[0]
        @parse_array << fixed
        redundancy_checker[fixed] = "already here"
      elsif email.scan(/,$/) == nil && @@redundancy_checker[email] == nil
        @parse_array << email
        redundancy_checker[email] = "already here"
      end
    }
  end

  def parse
    @parse_array
  end
end

emails = EmailParser.new("john@doe.com, person@somewhere.org, other@whatever.com bob@gmail.com person@somewhere.org")
puts emails.parse
puts EmailParser.new("avi@test.com, avi@test.com").parse
