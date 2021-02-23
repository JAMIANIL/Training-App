class Player < ApplicationRecord
    #validates :name, presence :true
    belongs_to :team
    belongs_to :country
    validates :name, uniqueness: true
    validates :name, length: { minimum: 3 }
    validates :matches, numericality: { greater_than_or_equal_to: 0 }

    before_validation :normalize_name, on: [:create,:edit]

    private
    def normalize_name 
      self.name = name.downcase.titleize
    end

    def calculate_age
      return Time.zone.now.year-self.dob.year
    end 

    public :calculate_age
    
end