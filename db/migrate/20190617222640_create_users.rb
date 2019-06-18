class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :phone_number
      t.string :default_url
      t.integer :default_break_time

      t.timestamps
    end
  end
end
