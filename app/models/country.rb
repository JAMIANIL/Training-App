
class Country < ApplicationRecord
    has_many :players, dependent: :destroy
    has_many :teams, through: :players
    validates_presence_of :name
    validates :players_representing, numericality: { greater_than_or_equal_to: 0 }
end
