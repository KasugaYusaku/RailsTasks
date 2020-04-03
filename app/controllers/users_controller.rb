class UsersController < ApplicationController
  def new
    @user = User.new #コントローラーでnewメソッドを定義すると、インスタンス変数@userに
  end　　　　　　　  #値を保存できる→viewで@userが使える
  def create
    @user = User.new(user_params)#paramsにviewで入力された値を格納
    if @user.save
      redirect_to root_path, success: "登録が完了しました"
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

#newメソッド内のUser.newのUserはUserモデル
#モデルはデータベースにテーブル作成指示