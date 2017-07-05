# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :list

  @email_arr = []

  def initialize(list)
    @list = list
  end

  def parse
    if list.include?(",")
      arr = list.split(", ")

      new_arr = arr.map do |email|
        email.split(" ")
      end

      @email_arr = new_arr.flatten
    else
      @email_arr = list.split(" ")
    end

    @email_arr.map! do |email|
      if (@email_arr.count(email) > 1)
        @email_arr.delete(email)
      else
        email
      end
    end
  end
end
