# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  def initialize(emails)
    @raw_emails = emails
  end

  def parse
    emails = @raw_emails.split(" ")
    emails.each do |email|
      email.slice!(",")
    end
    emails.uniq
  end
end
