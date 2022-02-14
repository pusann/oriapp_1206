class Message < ApplicationRecord
  validates :content,presence: true
  validates :nickname, presence: true
  validates :room, presence: true

  belongs_to :users
  belongs_to :room
end
