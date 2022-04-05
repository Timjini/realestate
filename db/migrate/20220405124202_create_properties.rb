class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :country
      t.string :zipcode
      t.float :latitude
      t.float :longitude
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
