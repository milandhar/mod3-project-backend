class BreakSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :active, :chosen_url, :chosen_break_time, :created_at, :updated_at 
end
