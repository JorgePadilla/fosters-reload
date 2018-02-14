class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :price_low
      t.string :price_normal
      t.string :price_high
      t.string :content1
      t.string :content2

      t.timestamps
    end
  end
end
