class Break < ApplicationRecord
  belongs_to :user


  def count_break_time

  end

  def deactivate
    if self.active == true
      self.update(active: false)
    end
  end

  def activate
    if self.active == false
      self.update(active: true)
    end
  end

end
