class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_string_without_commas = self.emails.gsub(/[,]/, "")
    parsed_emails = email_string_without_commas.split(" ")
    parsed_emails.uniq
  end

end
