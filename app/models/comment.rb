class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  
  validates :user_name, presence: true
  validates :description, presence: true
  validates :topic_id, presence: true
end