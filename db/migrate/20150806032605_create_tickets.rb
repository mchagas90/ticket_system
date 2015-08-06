class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :status
      t.string :title
      t.string :description
      t.string :category

      t.timestamps null: false
    end
  end
end
