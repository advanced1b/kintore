class AddConditionBodytypeToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :condition_body_type, :integer
  end
end
