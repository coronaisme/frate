class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :friend_id
      t.integer :friende_id

      t.timestamps
    end
  end
end
