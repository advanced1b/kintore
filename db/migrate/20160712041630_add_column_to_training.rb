class AddColumnToTraining < ActiveRecord::Migration
  def change
    add_column :trainings, :url2, :string
  end
end
