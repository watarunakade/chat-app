class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  #nameカラムに、presence:trueを設けることで、空の場合はDBに保存しないというバリデーションを設定する。
  
  has_many :room_users
  has_many :rooms, through: :room_users # room_usersを通してroom.rbと関係を持っている。
end
