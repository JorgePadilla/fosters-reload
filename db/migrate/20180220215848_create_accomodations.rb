class CreateAccomodations < ActiveRecord::Migration[5.1]
  def change
    create_table :accomodations do |t|
      t.string :name
      t.boolean :reserved
      t.references :room, foreign_key: true
      t.timestamps
    end
  end
end
