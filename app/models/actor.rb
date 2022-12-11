class Actor
  include Mongoid::Document
  include Mongoid::Timestamps

  field :surname, type: String
  field :name, type: String
  field :year, type: Integer
  field :country, type: String

  validates :surname, presence: true
end
