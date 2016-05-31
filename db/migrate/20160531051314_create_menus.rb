class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string  :name
      t.text    :description
      t.integer :condition_weight_from
      t.integer :condition_weight_to
      t.integer :condition_height_from
      t.integer :condition_height_to
      t.timestamps null: false
    end
  end
end
