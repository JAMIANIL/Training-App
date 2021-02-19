class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.datetime :dob
      t.integer :matches

      t.timestamps
    end
  end
end
