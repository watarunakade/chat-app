class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users # room_usersを経由してusers.rbと関係を持っている。
end
