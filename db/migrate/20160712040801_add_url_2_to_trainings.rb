class AddUrl2ToTrainings < ActiveRecord::Migration
  def change
    add_column :trainings, :url2, :string
  end
end
