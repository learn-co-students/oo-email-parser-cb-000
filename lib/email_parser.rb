# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emailList

  def initialize(list)
    @emailList = list
  end

  def parse
    newList = []
    list = @emailList.split(/[,\s]+/)
    list.each {|item| newList << item if newList.include?(item) == false}
    newList
  end

end
