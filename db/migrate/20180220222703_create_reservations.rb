class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.date :startday
      t.date :endday
      t.integer :status
      t.references :accomodation, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
