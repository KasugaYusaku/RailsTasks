class Topic < ApplicationRecord
  validates :user_id, presence: true#ヴァリデーション設定
  validates :description, presence: true
  validates :image, presence: true
  
  belongs_to :user#関連付け、Topicは一つのUserを持つ
  
  mount_uploader :image, ImageUploader
  
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: "user"
  has_many :comments
end
