require 'rails_helper'


RSpec.describe Team, type: :model do

  before(:all) do
    @team1 = build(:team)
    @teams=create(:team)
  end


  context "Validations" do
    it "is valid with valid attributes" do
         expect(@team1).to be_valid
    end
  end

   context "Invalid" do
    it "is not valid without a name"do
    @team2=build(:team,name:nil)
    expect(@team2).to_not be_valid
   end 
  
    it "is not valid with strength greater than 25"do
    @team2=build(:team,strength:34)
    expect(@team2).to_not be_valid
   end 
  end

end

