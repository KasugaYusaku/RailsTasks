Rails.application.routes.draw do
 
  get 'comments/new'
  get 'topics/new'
  get 'sessions/new'
  root "pages#index"#pages/controllerのindexアクションに処理振り分け
  get "pages/help" #pages/controllerのhelpアクションに処理振り分け
  
  resources :users#resourcesでルーティングを一括指定可能
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create' #postメソッドで情報を作成、createアクションへ
  delete '/logout', to: 'sessions#destroy'
  
  resources :topics do
    resources :comments, only: [:create, :new]#ルーティングのネスト
  end
  
  get 'favorites/index'#いいねした投稿一覧favorites/index.html
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
end
