class Article < ApplicationRecord
  
  validates :nickname,presence: true
  validates :title,presence: true
  validates :text,presence: true
  validates :sex_id,presence: true
  validates :age,presence: true

  belongs_to :users
end
