class AddConditionSexToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :condition_sex, :integer
  end
end
