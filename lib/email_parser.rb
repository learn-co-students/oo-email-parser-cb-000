
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split(" ").collect {|address| address.split(",")}.flatten.uniq
  end

end
