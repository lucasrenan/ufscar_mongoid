class Order
  include Mongoid::Document

  field :date, type: Date

  embeds_many :items
end