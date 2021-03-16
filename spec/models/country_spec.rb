require 'rails_helper'


RSpec.describe Country, type: :model do

  context "Validations" do
    it "is valid with valid attributes" do
       @country =Country.create(name:"Mumbai Indians", players_representing:10)
       expect(@country).to be_valid
    end
  end



   context "Invalid" do
    it "is not valid without a name"do
      @country=Country.create(name:nil, players_representing:20)
       expect(@country).to_not be_valid
    end 
  
    it "is not valid with value less than 0"do
     @country=Country.create(name:nil, players_representing:-1)
     expect(@country).to_not be_valid
   end 
  end
end

