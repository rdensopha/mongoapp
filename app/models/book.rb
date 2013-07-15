class Book
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes
  include Mongoid::Timestamps
  field :title, type: String
  field :publisher, type: String
  field :published_on, type: Date	
  field :votes, type: Array

  belongs_to :author, autosave: true
  has_and_belongs_to_many :categories
  embeds_many :reviews, cascade_callbacks: true

  accepts_nested_attributes_for :reviews, allow_destroy: true, reject_if: :all_blank
   
end