require "mongoid"
require "./config.rb"

Dir["./models/*.rb"].each do |f|
  require f
end

c = Category.create(title: "informatica")

b = Book.new(title: "test")
b.category = c
b.save

puts b.inspect






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