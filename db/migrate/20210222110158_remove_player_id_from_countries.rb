class RemovePlayerIdFromCountries < ActiveRecord::Migration[6.1]
  def change
    remove_column :countries, :player_id, :integer
  end
end
