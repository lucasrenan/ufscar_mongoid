require "mongoid"
require "./config.rb"

Dir["./models/*.rb"].each do |f|
  require f
end

post = Post.new
post.title = {
  en: "english",
  pt_BR: "portugues",
  es: "español"
}

puts post.save

puts Post.last.title["en"]










# order = Order.new(date: Date.today)
# item1 = Item.new(name: "mac")
# item2 = Item.new(name: "mouse")

# order.items << item1
# order.items << item2

# puts order.inspect
# puts order.items.inspect

# order.save
