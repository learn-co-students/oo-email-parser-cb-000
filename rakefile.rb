require_relative 'lib/email_parser.rb'
require 'pry'
require 'rake'

def reload!
  load 'lib/email_parser.rb'
end

task :console do
  Pry.start
end
