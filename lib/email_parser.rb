# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser

  attr_accessor :emails

  def initialize(mails)
    @emails = mails
  end

  def parse
    mails = Array.new
    if @emails.include?(",") and @emails.include?(".com ")
       mails = @emails.split(",").join("")
       mails = mails.split(" ")
      return mails
    end
    if @emails.include?(",")
      mails = @emails.split(", ")
    end
    if !@emails.include?(",")
      mails = @emails.split(" ")
    end

    mails.uniq
  end

end
