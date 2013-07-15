class Review
  include Mongoid::Document
  include Mongoid::Timestamps
  field :comment, type: String
  field :username, type: String
  embedded_in :book
end