class Post
  include Mongoid::Document

  field :title, type: Hash
end