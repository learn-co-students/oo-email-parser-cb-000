# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

	attr_accessor :emails 

	def initialize(emails)
		@emails = emails
	end

	def parse
		@emails = @emails.split(" ")
		#search for commas at the end of emails && delete them
		@emails[0] = @emails[0].delete("/,/")
		if @emails.length > 2
			@emails[2] = @emails[2].delete("/,/")
		end
		#if emails are duplicates, do not include them 
		@emails = @emails.uniq
		@emails
	end 
end