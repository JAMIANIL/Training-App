class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :players_representing
      t.integer :player_id

      t.timestamps
    end
  end
end
