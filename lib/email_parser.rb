# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email_string

  def initialize(email_string)
    @email_string = email_string
  end

  def parse
    email_string.scan(/\w+@\w+\.com/).uniq
  end

end

# class EmailParser
#   attr_accessor :email_string
#
#   def initialize(email_string)
#     @email_string = email_string
#   end
#
#   def parse
#     email_string.split.map do |x|
#       x.split(",")
#     end.flatten.uniq
#   end
#
# end
