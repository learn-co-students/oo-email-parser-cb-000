# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor(:email)
  @@all=[]
  @@string=""

  def initialize(string)
    @@string=@@string + "#{string}"
  end

  def parse
    email_array=@@string.split(/\s/)
    @@string=""
    clean_unique_emails = []
    unique_emails=email_array.uniq
    unique_emails.each do |email|
      if email.include? ","
        clean_unique_emails << email.tr(",","")
      else
        clean_unique_emails << email
      end
    end
    clean_unique_emails.uniq
  end

end
