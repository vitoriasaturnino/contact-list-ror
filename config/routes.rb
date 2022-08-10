Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # controller#action
  root to: "static_pages#index"

  # definindo rotas para os links no footer das páginas 
  # req get, nome rota, acessa o controller # action
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
end
