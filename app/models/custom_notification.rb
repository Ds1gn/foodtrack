class CustomNotification < ActiveRecord::Base
  has_many :user
  belongs_to :food
end
