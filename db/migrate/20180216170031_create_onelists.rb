class CreateOnelists < ActiveRecord::Migration[5.1]
  def change
    create_table :onelists do |t|
      t.string :text
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
