# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

    #  it "parses CSV emails" do
    #  expect(EmailParser.new("avi@test.com, arel@test.com").parse).to eq(["avi@test.com", "arel@test.com"])
     
  
    #it "parses space delimited emails" do
    #expect(EmailParser.new("avi@test.com arel@test.com").parse).to eq(["avi@test.com", "arel@test.com"])
   
  
    #it "parses both CSV and space delimited emails" do
    #emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
    #expect(EmailParser.new(emails).parse).to eq(["avi@test.com", "arel@test.com","test@avi.com", "test@arel.com"]) 
     
  
    #it 'parses and removes duplicate emails' do
    #Parse csv and Remove dups: (EmailParser.new("avi@test.com, avi@test.com").parse).to eq(["avi@test.com"])
    #Parse space delim emails:  (EmailParser.new("avi@test.com arel@test.com").parse).to eq(["avi@test.com", "arel@test.com"])
    #     emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
    #    (EmailParser.new(emails).parse).to eq(["avi@test.com", "arel@test.com","test@avi.com", "test@arel.com"])  

    #input is always a string
    #always removes duplicates
    #parses for either psace or comma separated values
    #always returns an array of strings that are email addresses
    #parse csv or space delim emails: 

   
class EmailParser
    @emails = []

    # EmailParser.new(emails) => ["email1@emailaddr", "email2@emailaddr"]
    def initialize(emails)
        
        #remove spaces and commands, and return an array
        #before assigning to @emails
        @emails = (emails.gsub(",", " ")).split(" ");
        puts("Initialized emails:  #{@emails}")
        @emails
    end


    #parse("avi@test.com arel@test.com") => ["avi@test.com", "arel@test.com"]
    #(EmailParser.new("avi@test.com arel@test.com").parse).to eq(["avi@test.com", "arel@test.com"])
    def parse
        #return unique emails only as an array
        puts "Unique emails:  #{@emails.uniq}"
        @emails.uniq
    end

end
