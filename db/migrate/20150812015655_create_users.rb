class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :senha

      t.timestamps null: false
    end
  end
end
