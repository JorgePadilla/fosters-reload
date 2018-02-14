class AddPath1ToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :path1, :string
    add_column :rooms, :path2, :string
  end
end
