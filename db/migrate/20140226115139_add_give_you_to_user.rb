class AddGiveYouToUser < ActiveRecord::Migration
  def change
    add_column :users, :give_you, :text
  end
end
