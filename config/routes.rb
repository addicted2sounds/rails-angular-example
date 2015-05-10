Rails.application.routes.draw do

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  get 'product/index'

  mount RademadeAdmin::Engine => '/admin'
  namespace :rademade_admin, path: '/admin' do

    admin_resources :users

  end

  scope :api, module: :api, defaults: {format: :json} do
    resources :users, :only => [:index]
    resources :products, only: [:index, :show]
  end

  scope :module => :public do
    root 'index#index'
    get '*path', :to => 'index#index'
  end

end