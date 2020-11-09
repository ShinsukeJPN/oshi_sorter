Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'manage' do
    resources :sort_objects
  end

  scope module: 'front' do
    resources :sort_objects
    resources :themas do
      member do
        get :sort
      end
    end
    resources :categories
  end

  get 'get_objects', to: 'front/themas#get_objects'
  get 'return_first_objects', to: 'front/themas#return_first_objects'

  get 'get_sort_objects', to: 'front/api#get_sort_objects'
end
