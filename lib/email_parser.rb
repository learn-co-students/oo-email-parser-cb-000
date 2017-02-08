class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails = @emails.split(/\s|,\s/)
    @emails = @emails.uniq
  end

end
