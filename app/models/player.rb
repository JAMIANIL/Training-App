class Player < ApplicationRecord
    belongs_to :team
    belongs_to :country
    validates :name, presence: true
    validates :name, length: { minimum: 2 }
    validates :matches, numericality: { greater_than_or_equal_to: 0 }

    after_initialize do |player|
      puts "You have initialized an object!"
    end

    after_find do |user|
      puts "You have found an object!"
    end

    after_destroy :log_destroy_action

    def log_destroy_action
     puts 'Player destroyed'
    end


    def calculate_age
      return ((Time.now - self.dob.to_time)/1.year.seconds).floor
    end

      
end