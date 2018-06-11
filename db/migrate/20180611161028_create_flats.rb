class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.integer :price
      t.string :address
      t.string :city
      t.integer :capacity
      t.references :user, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
