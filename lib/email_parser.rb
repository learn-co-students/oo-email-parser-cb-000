# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser

attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    #list = []
    #if emails.split(", ")
    #if @emails.include?(", ") || @emails.include?(" ")
    #  @emails.split(", ") || @emails.split(" ")
    #elsif @emails.include?(", ")
    #    @emails.split(", ")
    #else @emails.split(" ")
      #list << emails.split(", ")
    #else emails.split(" ")
    #  list << emails.split(" ")
#list
#"avi@test.com, arel@test.com test@avi.com, test@arel.com"
if @emails.include?(", ") && @emails.include?(".com ")
  @emails.delete(",").split(" ")#&& @emails.split(", ") @emails.split(", "&&" ")
  #binding.pry
elsif @emails.include?(".com ")
@emails.split(" ").uniq
else @emails.split(", ").uniq
end
#@emails.uniq
end

end
