class User < ActiveRecord::Base
  has_many :purchases
  has_many :custom_notification
end
