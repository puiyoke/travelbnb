class CreateListings < ActiveRecord::Migration[5.1]
    def change
      create_table :listings do |t|
        t.timestamps null: false
        t.string :name
        t.string :property_type
        t.integer :guest_number
        t.string :country
        t.string :state
        t.string :city
        t.integer :zipcode
        t.string :price
        t.string :description
        t.string :phone
        t.boolean :verified
        t.json :images
        t.references :user, foreign_key: true
      end
    end
  end
  