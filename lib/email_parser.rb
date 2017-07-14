# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'set'
class EmailParser
    attr_reader :emails
    def initialize(csv)
        @emails = csv 
    end
    
    def parse
        # if @emails.include?(', ') && @emails.include?(' ')
        #     @emails = @emails.split(/, | /)
        # elsif  @emails.include?(', ')
        #     @emails = @emails.split(', ')
        # else
        #     @emails = @emails.split(' ')
        # end
       
        (Set.new(emails.split(/, | /))).to_a
    end

end