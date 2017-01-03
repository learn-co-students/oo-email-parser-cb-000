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
    format_emails(@emails)
  end

  def format_emails(emails)
    formated_emails = ""
    if emails.include?(",")
      # Replace all commas with new lines
      formated_emails = emails.gsub(/,/,"")
      formated_emails = formated_emails.split(" ")
    else
      # Make emails an array seperated by empty spaces
      formated_emails = emails.split(" ")
    end
    formated_emails.uniq
  end

end
