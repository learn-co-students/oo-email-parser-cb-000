# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'set'
class EmailParser

    def initialize(csv)
        @str = csv 
    end
    
    def parse
        if @str.include?(', ') && @str.include?(' ')
            @str =@str.split(/, | /)
        elsif  @str.include?(', ')
            @str = @str.split(', ')
        else
            @str = @str.split(' ')
        end
        @str = (Set.new(@str)).to_a
    end

end