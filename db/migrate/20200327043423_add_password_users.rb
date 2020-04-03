class AddPasswordUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password_digest, :string
  end
end
#add_columnでUserテーブルにpassword_digestカラムを追加
#has_secure_passwordを持ってるモデル（テーブル）に追加