class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.integer :food_choice
      t.boolean :love_choice

      t.timestamps
    end
  end
end
