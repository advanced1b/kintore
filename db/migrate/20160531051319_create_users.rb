class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :login
      t.string  :password_hash
      t.string  :password_salt
      t.integer :sex
      t.integer :height
      t.integer :weight
      t.integer :body_type
      t.timestamps null: false
    end
  end
end
