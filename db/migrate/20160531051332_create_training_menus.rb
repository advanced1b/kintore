class CreateTrainingMenus < ActiveRecord::Migration
  def change
    create_table :training_menus do |t|
      t.references  :training, index: true, foreign_key: true
      t.references  :menu,     index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
