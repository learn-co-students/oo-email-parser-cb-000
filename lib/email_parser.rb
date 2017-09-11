require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  @emails = ""

  # def initialize(emails)
  def initialize(emails)
    # @emails = emails
    new(emails)
  end

  def new(emails)
    # puts "*********DID WE GET TO NEW?"
    # puts "********#{emails}"
    # @emails = emails.split([/\s,/])
    # puts "********#{@emails}"

    @emails=emails
  end # new

  def parse
    puts "***************DID WE GET TO PARSE?"
    emails_array = @emails.split /\s|,/
    # emails_array2 = emails_array.collect do |email|
    #   if email != ""
    #     email
    #   end
    # end
    emails_array2 = emails_array.find_all {|email| email != ""}
    emails_array2 = emails_array2.uniq
    # puts "*************PARSE-EMAILS_ARRAY2#{emails_array2}"
    emails_array2
  end #parse


end # class

#
# test =EmailParser.new("avi@test.com, arel@test.com")
# test =EmailParser.new("avi@test.com, avi@test.com")
# test2 = test.parse
# puts test2.inspect
#
# binding.pry
