# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser
  attr_accessor :list

  def initialize(emails)
    @list = emails
  end

  def parse
    @final_list = []
    arr = @list.scan(/(\w++@\w++\.\w++)/)
    arr.each do |email| { @final_list << email[0] }
    @final_list.uniq
  end
  
end
