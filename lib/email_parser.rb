# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ')

class EmailParser
  @@parsed = []

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
    @@parsed.clear
  end

  def parse
    test = @emails.split(" ")

    test.each do |email|
      email = email.chomp(",")
      if @@parsed.include?(email) == false
        @@parsed << email
      end
    end
    @@parsed.uniq
  end

end
