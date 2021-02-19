class Player < ApplicationRecord
    #validates :name, presence :true
    validates :name, uniqueness: true
    validates :name, length: { minimum: 3 }
    validates :matches, numericality: { greater_than_or_equal_to: 0 }

    before_validation :normalize_name, on: [:create,:edit]

    private
    def normalize_name
      self.name = name.downcase.titleize
    end

end