require "mongoid"
require "./config.rb"

Dir["./models/*.rb"].each do |f|
  require f
end


Order.total_price.each do |mr|
  puts mr.inspect
end

# order = Order.new(date: Date.today)
# order.items << Item.new(price: 10)
# order.items << Item.new(price: 50)

# order.save

# order = Order.new(date: Date.today)
# order.items << Item.new(price: 20)
# order.items << Item.new(price: 100)

# order.save






# puts
# Post.where("title.en" => "english")
#     .count




# post = Post.new
# post.title = {
#   en: "english",
#   pt_BR: "portugues",
#   es: "español"
# }

# puts post.save

# puts Post.last.title["en"]





# order = Order.new(date: Date.today)
# item1 = Item.new(name: "mac")
# item2 = Item.new(name: "mouse")

# order.items << item1
# order.items << item2

# puts order.inspect
# puts order.items.inspect

# order.save
