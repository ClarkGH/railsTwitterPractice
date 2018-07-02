class User < ApplicationRecord
  has_many :followers, :class_name => "Relationships", :foreign_key => "user_id"
  has_many :following, :class_name => "Relationships", :foreign_key => "follower_id"
  has_many :likes
  has_many :tweets
end
