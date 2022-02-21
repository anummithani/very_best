class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :neighborhood_id
      t.string :map_address

      t.timestamps
    end
  end
end