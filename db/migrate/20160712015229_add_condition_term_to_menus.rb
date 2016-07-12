class AddConditionTermToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :condition_term, :integer
  end
end
