# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email
  @@all = []

def initialize(email)
  #i need to initialize with a list of emails either in csv or space format
  @email = email
end

def self.all
  @@all
end



def parse
  #i need to take in a list of emails in csv or spaced format and return only the unique ones
  #check if email string includes csv and whitespace
  if (@email.include? ",") && @email.include?(" ")
    #if there are commas in the string containing emails, split on the commas
    newArray = @email.split(",")
    #remove leading whitespaces
    newArray.map! {|i| i = i.lstrip}
    #cycle through newArray and split entries containing spaces
    newArray.map! {|i|
    if (i.include?(" "))
    i = i.split(" ")
  else
    i = i
  end}
  #we just made an array within an array, so now we flatten to one dimension
    newArray = newArray.flatten
  else
    newArray = @email.split
  end
  newArray = newArray.uniq
end



end
