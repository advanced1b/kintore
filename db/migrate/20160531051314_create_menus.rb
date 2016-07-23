class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string  :name
      t.text    :descriptiono
      t.integer :condition_weight_from
      t.integer :condition_weight_to
      t.integer :condition_height_from
      t.integer :condition_height_to
      t.integer :condition_sex
      t.integer :condition_term
      t.integer :condition_body_type
      t.timestamps null: false
    end
  end
end
