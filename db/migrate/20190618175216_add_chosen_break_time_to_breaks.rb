class AddChosenBreakTimeToBreaks < ActiveRecord::Migration[5.2]
  def change
    add_column :breaks, :chosen_break_time, :integer
  end
end
