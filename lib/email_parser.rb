# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailParser

	@@parsed = []

	attr_reader :emails

	def initialize(emails)
		@emails = emails
		@@parsed.clear
	end

	def parse
		check = @emails.split(" ")
		
		check.each do |email|
			email = email.chomp(",")
			
			if(@@parsed.include?(email) == false)
				@@parsed << email
			end
        end
        @@parsed.uniq
    end
end

