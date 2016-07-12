class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string  :name
      t.text    :description
      t.string  :url  #https://www.youtube.com/embed/2VRaGrxZLt8
      t.integer :part
      t.timestamps null: false
    end
  end
end
