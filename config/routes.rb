Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get('/', {:controller => 'application', :action => 'home'})

  get('/forex', {:controller => 'currency', :action => 'forex'})

  get('/forex/:currency', {:controller => 'currency', :action =>'select'})

  get('/forex/:currency/:to', {:controller => 'currency', :action =>'convert'})

end
