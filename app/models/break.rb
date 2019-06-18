class Break < ApplicationRecord
  belongs_to :user

  def count_total_break_seconds
    self.updated_at - self.created_at
  end

  def count_formatted_break_time
    total_seconds = self.count_total_break_seconds
    seconds = (total_seconds) % 60
    minutes = (total_seconds / 60) % 60
    hours = total_seconds / (60*60)
    format("%02d:%02d:%02d", hours, minutes, seconds)
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
