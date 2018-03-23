# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  @@text = ""

  def initialize(text)
    @@text = text
  end

  def parse
    raw_array = @@text.split(/[ ,]/)
    clean_array = []
    raw_array.each do |email|
      clean_array << email if email != ""
    end
    return clean_array.uniq
  end
end
