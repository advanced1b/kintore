class AddTermToUsers < ActiveRecord::Migration
  def change
    add_column :users, :term, :integer
  end
end
