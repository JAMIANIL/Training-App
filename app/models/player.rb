class Player < ApplicationRecord
    belongs_to :team
    belongs_to :country
    validates :name, presence: true
    validates :name, length: { minimum: 2 }
    validates :matches, numericality: { greater_than_or_equal_to: 0 }

    before_validation :normalize_name, on: [:create,:edit]

    def calculate_age
      return Time.now.year-self.dob.year
    end

    private
    def normalize_name 
      self.name = name.downcase.titleize
    end 
    
end