class CreatePurses < ActiveRecord::Migration[6.0]
  def change
    create_table :purses do |t|
      t.string :brand
      t.string :name
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
