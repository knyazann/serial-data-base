class Serial
    include Mongoid::Document
    include Mongoid::Timestamps
    field :name, type: String
    field :year, type: Integer
    field :episode_num, type: Integer
    field :genre, type: String
    field :country, type: String
    field :producer, type: String

    validates :name, presence: true

end