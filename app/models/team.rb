class Team < ApplicationRecord
    #validates :name, presence :true
    has_many :players
    has_many :countries, through: :players
end
