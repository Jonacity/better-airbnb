class AddRatingToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :rating, :integer
  end
end
