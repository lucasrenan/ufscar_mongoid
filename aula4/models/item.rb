class Item
  include Mongoid::Document

  field :name

  embedded_in :order
end
