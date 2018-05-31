# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  # attr_accessor :email_addresses

  @@email_addresses = []

  def initialize(emails)
    @@email_addresses.clear
    @@email_addresses << emails
  end

  def self.all
    @@email_addresses
  end

  def parse
    array = @@email_addresses.to_s.scan(/\w+@\w+.\w+/)
    array = array.uniq

  end

end

# email_class = EmailParser.new("avi@test.com, arel@test.com test@avi.com, test@arel.com ")
# EmailParser.all
# EmailParser.all.to_s.scan(/\w+@\w+.\w+/)
#
# EmailParser.parse
#
#
#
# string = "avi@test.com, arel@test.com test@avi.com, test@arel.com "
# array = string.scan(/\w+@\w+.\w+/)
#
#
# emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
# array = emails.scan(/\w+@\w+.\w+/)
#
# addresses = []
# addresses << emails
