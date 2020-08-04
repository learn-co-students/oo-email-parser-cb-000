# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

# email_addresses = "john@doe.com, person@somewhere.org"
# parser = EmailAddressParser.new(email_addresses)
#
# parser.parse
# # => ["john@doe.com", "person@somewhere.org"]

require "pry"

class EmailAddressParser

  def initialize(email_addresses)
    @emails = email_addresses
    # binding.pry
  end

  def parse
    parsed_emails = @emails.split(/ |, /)   # (, | ) /[;, ]/
parsed_emails.uniq

    # (1..10).find_all { |i|  i % 3 == 0 }   #=> [3, 6, 9]
    #
    #   iterate over entire array
    #   map array item if find.all < 2
  end

end
