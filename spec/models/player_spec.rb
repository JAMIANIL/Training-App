require 'rails_helper'

RSpec.describe Player, type: :model do

  context "Validations" do
    it "is valid with valid attributes" do
       @player =Player.create(name:"Vishal",dob:Time.now,matches:25,team_id:Team.create(name:"Tm", strength:23).id,country_id:Country.create(name:"Cn",players_representing:54).id)
       expect(@player).to be_valid
    end
  end

   context "Invalid" do
    it "is not valid without a name"do
    @player=Player.create(name:nil,dob:Time.now,matches:25,team_id:Team.create(name:"Tm", strength:23).id,country_id:Country.create(name:"Cn",players_representing:54).id)
    expect(@player).to_not be_valid
   end 

   it "is not valid with a name of 1 letter"do
   @player=Player.create(name:"A",dob:Time.now,matches:25,team_id:Team.create(name:"Tm", strength:23).id,country_id:Country.create(name:"Cn",players_representing:54).id)
   expect(@player).to_not be_valid
   end

   it "is not valid with a negative value for matches"do
   @player=Player.create(name:"",dob:Time.now,matches:-2,team_id:Team.create(name:"Tm", strength:23).id,country_id:Country.create(name:"Cn",players_representing:54).id)
   expect(@player).to_not be_valid
  end
  end
end
