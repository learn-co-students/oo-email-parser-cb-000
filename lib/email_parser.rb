class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails = self.emails.split(/[,\s]+/)
    emails = emails.uniq
  end


end
