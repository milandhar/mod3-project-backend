class AddPhoneNumberToBreaks < ActiveRecord::Migration[5.2]
  def change
    add_column :breaks, :phone_number, :string
  end
end
