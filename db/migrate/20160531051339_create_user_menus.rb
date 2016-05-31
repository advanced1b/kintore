class CreateUserMenus < ActiveRecord::Migration
  def change
    create_table :user_menus do |t|
      t.references  :user, index: true, foreign_key: true
      t.references  :menu,    index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
