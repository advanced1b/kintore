class CreateTranings < ActiveRecord::Migration
  def change
    create_table :tranings do |t|
      t.string  :name
      t.text    :description
      t.string  :url
      t.integer :part
      t.timestamps null: false
    end
  end
end
