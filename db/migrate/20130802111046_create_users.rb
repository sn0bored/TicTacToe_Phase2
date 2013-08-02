class CreateUsers < ActiveRecord::Migration
  def change 
    create_table :users do |t|
      t.string :user_name, :password
      t.integer :wins, :losses
      t.timestamps
    end
  end
end
