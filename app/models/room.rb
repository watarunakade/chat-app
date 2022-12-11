class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users # room_usersを経由してusers.rbと関係を持っている。
  has_many :messages, dependent: :destroy
  validates :name, presence: true

end
