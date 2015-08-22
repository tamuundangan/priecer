Rails.application.routes.draw do

  namespace :api, path: '/api' do
    namespace :stuff, path: '/stuff' do
      post '/' => 'stuff#create'
      get  '/' => 'stuff#index'
    end
    namespace :search, path: '/search' do
      get  '/' => 'search#index'
    end
  end
end
