class Author
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  has_many :books

  accepts_nested_attributes_for :books  
end