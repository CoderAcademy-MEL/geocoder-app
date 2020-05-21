class AddVenueRefToInformation < ActiveRecord::Migration[6.0]
  def change
    add_reference :information, :venue, null: false, foreign_key: true
  end
end
