# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse #no input argument? maybe its because it is already initialized
    emails.split.map do |email| # why do you have to split twice?
      email.split(',')
    end.flatten.uniq #why does this go at the end?
  end

end
