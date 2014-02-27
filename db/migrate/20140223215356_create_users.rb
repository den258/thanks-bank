class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :account_no
      t.string :name
      t.string :area
      t.text :memo

      t.timestamps
    end
  end
end
