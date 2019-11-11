class DeleteLnameFromUser < ActiveRecord::Migration[6.0]
  def change
  end
  def self.up
    remove_column :users, :lname
  end
end
