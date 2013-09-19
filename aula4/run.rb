require "mongoid"
require "./config.rb"

Dir["./models/*.rb"].each do |f|
  require f
end

puts "haaa"