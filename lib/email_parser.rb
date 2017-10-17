# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(email_list)
    @emails = email_list
  end

  def parse

    parse_array =@emails.split(" ")
    formatted_array = []
    parse_array.each do |email|
      if email.include?(",")
        fix = email.gsub(",", "")
        formatted_array << fix
      else
        formatted_array << email
      end
    end
    final_array = []
    formatted_array.each do |email|
      if final_array.include?(email) == false
        final_array << email
      end
    end
    return final_array
  end


end
