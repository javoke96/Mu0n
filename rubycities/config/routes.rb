Rails.application.routes.draw do

  get 'venue/', to: 'venue#show'
  get 'venue/create'
  post 'venue/create'
  get 'venue/view/:id', to: 'venue#view'
  get 'venue/show'
  get 'venue/delete/:id', to: 'venue#delete'
  get 'venue/update/:id', to: 'venue#update'
  post 'venue/update/:id', to: 'venue#update'

  constraints subdomain: 'api' do

end
  api_version(:module => "V1", :path => {:value => "v1"}) do
resources :cities

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
