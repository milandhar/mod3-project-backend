class BreakSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :active, :chosen_url, :chosen_break_time, :phone_number, :created_at, :updated_at
end
