class EmailAddressParser

  attr_accessor :email_list

  def initialize (email_addresses)
    @email_list = email_addresses
  end

  def parse
    @email_list.split(/, |,| /).uniq
  end

end
