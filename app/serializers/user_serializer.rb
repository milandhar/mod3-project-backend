class UserSerializer < ActiveModel::Serializer
  has_many :breaks
  attributes :id, :user_name, :phone_number, :default_url, :default_break_time 
end
