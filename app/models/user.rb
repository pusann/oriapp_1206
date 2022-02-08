class User < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name_kana, presence: true
  validates :last_name_kana, presence: true
  validates :nickname, presence: true
  validates :email, presence: true
  validates :sex_id, presence: true
  validates :age, presence: true
  validates :encrypted_password, presence: true
  validates :category_id, presence:  true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :articles
         has_many :rooms
         has_many :room_users
         has_many :messages
end
