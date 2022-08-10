Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # controller#action
  root to: "static_pages#index"

  # definindo rotas para os links no footer das páginas 
  # req get, nome rota, acessa o controller # action
  get 'about', to: 'static_pages#about'
  get 'info_contact', to: 'static_pages#contact'

  # log in
  get 'log_in', to: 'sessions#new'
  post 'log_in', to: 'sessions#create'
  # log_out 
  delete 'sair', to: 'sessions#destroy'

  # rotas padrão de uma arquitetura rest (crud de contatos)
  resources :contacts
  # rotas padrão de uma arquitetura rest (crud de users)
  resources :users, only: [:new, :create, :show]
end
