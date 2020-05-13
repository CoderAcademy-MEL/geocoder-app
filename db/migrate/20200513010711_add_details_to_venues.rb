class AddDetailsToVenues < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :longitude, :float
    add_column :venues, :latitude, :float
  end
end
