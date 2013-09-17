class Book
  include Mongoid::Document

  field :title
  field :price, type: Float

  belongs_to :category

  validates_presence_of :title
end