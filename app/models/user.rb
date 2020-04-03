class User < ApplicationRecord
    
    validates :name, presence: true,  length: { maximum: 15}
    #名前の長さに制限
    VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX}
    #メルアド正規表現(@含まれる)
    VARID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z\d]{8,32}+\z/
    validates :password, presence: true, length: { in: 8..32}, format: { with: VARID_PASSWORD_REGEX}
    #パスワード文字数制限
    #英数字混合のみ可、正規表現
    
    has_secure_password#パスワード機能の実装
    
    has_many :topics#関連付け、Userは何個かTopic持ってる
    has_many :favorites
    has_many :favorite_topics, through: :favorites, source: 'topic'
    has_many :comments
end