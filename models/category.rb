class Category
  include Mongoid::Document

  field :name

  has_many :books
end