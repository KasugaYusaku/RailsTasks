class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    
    add_flash_types :success, :info, :warning, :danger
    
    helper_method :current_user, :logged_in?#application/helperのコードをドライに
    #コントローラーのメソッドをヘルパーでも使えるよ
    
    def current_user#現在ログインしてるユーザーを返すメソッド
        @current_user ||= User.find_by(id: session[:user_id])
        #||=は@current_userが未定義ならUser.find_byしてくださいの意味
    end
    
    def logged_in?#ログインしているか確認するメソッド。ログインしてますか？
        !current_user.nil?#!で否定、.nilを否定。current_userいます→はい
    end
end
