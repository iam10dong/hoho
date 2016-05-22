class CreateRoominfos < ActiveRecord::Migration
  def change
    create_table :roominfos do |t|
      t.string :roomnumber
      t.string :bulidingname
      t.integer :weekday
      t.integer :timevalue
      t.integer :isempty
      t.timestamps null: false
    end
  end
end
