class RemoveStatusFromFlats < ActiveRecord::Migration[5.2]
  def change
    remove_column :flats, :status, :string
  end
end
