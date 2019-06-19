class AddChosenUrlToBreaks < ActiveRecord::Migration[5.2]
  def change
    add_column :breaks, :chosen_url, :string
  end
end
