class EmailAddressParser
  attr_accessor :email

  def initialize(email)
    @email = email
  end

  def parse
    email_list = @email.gsub(", ", " ").split(" ")
    email_list.uniq {|email| email}
  end

end
