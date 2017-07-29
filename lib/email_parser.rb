# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :csv

  def initialize(csv)
    @csv = csv
  end

  def parse
    @csv.split(/\,\s|\s/).uniq
  end
end
