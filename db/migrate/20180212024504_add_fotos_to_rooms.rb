class AddFotosToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :photo1, :string
    add_column :rooms, :photo2, :string
    add_column :rooms, :photo3, :string
    add_column :rooms, :photo4, :string
    add_column :rooms, :photo5, :string
    add_column :rooms, :foot_note, :string
  end
end
