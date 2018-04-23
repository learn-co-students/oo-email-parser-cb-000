require 'pry'
class EmailParser
  attr_reader :emails
  def initialize(emails)
    @emails = emails
  end
  def parse
    @emails.tr(",", "").split(" ").uniq
    #binding.pry
  end
end
