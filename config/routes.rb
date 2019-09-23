Rails.application.routes.draw do
    get 'welcome/index'


    get 'articles/list', to: 'articles#list', as: 'article_list'
    root 'welcome#index'

    resources :articles

    resources :articles do
      resources :comments
    end

  end