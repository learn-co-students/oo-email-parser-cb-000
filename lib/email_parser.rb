# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :src

  def initialize(src)
    @src = src
  end

  def parse
    src_splt = src.split(/[ ,]/)
    emails= []
    src_splt.each do |email|
      emails << email unless email.empty? || emails.include?(email)
    end
    emails
  end

end
