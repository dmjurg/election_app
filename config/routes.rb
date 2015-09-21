Rails.application.routes.draw do
  root 'voters#index'

  resources :voters do
    get 'delete', on: :member # for delete modal
  end
end
