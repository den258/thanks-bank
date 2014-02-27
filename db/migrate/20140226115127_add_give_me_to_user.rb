class AddGiveMeToUser < ActiveRecord::Migration
  def change
    add_column :users, :give_me, :text
  end
end
