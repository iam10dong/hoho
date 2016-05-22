class CreateRoomseeds < ActiveRecord::Migration
  def change
    create_table :roomseeds do |t|
      t.string :roomnumber

      t.timestamps null: false
    end
  end
end
