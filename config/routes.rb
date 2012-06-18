NestedForm::Application.routes.draw do
  root to: 'groups#new'
  
  resources :groups, only: [:new, :create, :show]
end
