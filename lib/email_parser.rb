class EmailParser
  attr_accessor :email

  def initialize(email_string)
    @email = email_string
  end

  def parse
    email_list = @email.split(/[,\s]/)
    email_list.uniq.reject {|x| x.empty?}
  end
end
