Rails.application.routes.draw do
  root 'voters#index'

  resources :voters do
    get 'delete' # for delete modal
  end
end
