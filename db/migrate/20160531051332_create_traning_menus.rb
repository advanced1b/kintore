class CreateTraningMenus < ActiveRecord::Migration
  def change
    create_table :traning_menus do |t|
      t.references  :traning, index: true, foreign_key: true
      t.references  :menu,    index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
