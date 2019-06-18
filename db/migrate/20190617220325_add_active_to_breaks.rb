class AddActiveToBreaks < ActiveRecord::Migration[5.2]
  def change
    add_column :breaks, :active, :boolean
  end
end
