class Team < ApplicationRecord
    #validates :name, presence :true
    has_many :players, dependent: :destroy
    has_many :countries, through: :players
    validates_presence_of :name
    validates :strength, numericality: { less_than_or_equal_to: 25 }
end

