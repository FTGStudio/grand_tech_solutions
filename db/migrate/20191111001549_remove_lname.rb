class RemoveLname < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :lname
  end
end
