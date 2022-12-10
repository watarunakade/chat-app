class RoomUser < ApplicationRecord
  belongs_to :room
  belongs_to :user # room.rbとusers.rbに属している。
end
