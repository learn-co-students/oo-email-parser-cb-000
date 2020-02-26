# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  # @@all = []
  # def self.all
  #   @@all
  # end

  def initialize(emails)
    # @name = name
    @emails = emails
  end

  def parse
    @emails.split(/[,\s]/).reject(&:empty?).uniq
  end

end
