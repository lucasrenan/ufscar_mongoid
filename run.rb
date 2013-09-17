require "mongoid"
require "./config.rb"

Dir["./models/*.rb"].each do |f|
  require f
end


# t1 = Tag.create(name: "computador")
# t2 = Tag.create(name: "apple")

# product = Product.new(name: "macbook")
# product.tags = [t1, t2]
# product.save

puts Product.count
p = Product.last
puts p.tags.inspect

puts
puts p.tags.map(&:name)


# c = Category.create(title: "informatica")

# b = Book.new(title: "test")
# b.category = c
# b.save

# puts b.inspect






# book = Book.new(title: "vazio")
# # Book.create(title: "vazio")
# if book.save
#   puts "salvou o livro!"
# else
#   puts "erro: nao salvou o livro"
# end








# book = Book.new
# book.title = "livro teste"
# puts book.save
# puts book.inspect