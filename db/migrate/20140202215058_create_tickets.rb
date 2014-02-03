class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :code
      t.integer :category_id
      t.integer :status_id
      t.integer :user_id
      t.text :question

      t.timestamps
    end
  end
end
