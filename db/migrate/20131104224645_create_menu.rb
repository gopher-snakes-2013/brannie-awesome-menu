class CreateMenu < ActiveRecord::Migration
  def up
    create_table :menus do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :menu
  end
end
