require 'twilio-ruby'
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

  def send_message
    account_sid = ENV['ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN']

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.api.account.messages.create(
      from: '+12406410870',
      to: '+1' + self.phone_number,
      body: "Hey #{self.user.user_name}, your break is up! We've opened: #{self.chosen_url}"
    )
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
