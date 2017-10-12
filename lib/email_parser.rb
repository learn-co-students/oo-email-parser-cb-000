# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :name, :emails

  @@emails = []

  def initialize(emails)
    @emails = emails
  end

  def self.all
    @@emails
  end

  def parse
    email = emails.split(/,\s|\s|,/)
    array = []
    email.each do |item|
      unless array.include?(item)
        array.push(item)
      end
    end
    array
  end

  def save
    self.class.all << self
  end
end
