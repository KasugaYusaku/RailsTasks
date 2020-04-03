class CreateUsers < ActiveRecord::Migration[5.2]
  def change　#migrationファイルchangeメソッドで作成変更指示。
    create_table :users do |t|
      t.string :name
      t.string :email
      

      t.timestamps
    end
  end
end
#ここでテーブル作成してるんだよー
#migrationファイルは、データベースとの繋がりを簡単にしてくれるもの
