class Book
  include Mongoid::Document

  field :title
  field :price, type: Float

  validates_presence_of :title
end