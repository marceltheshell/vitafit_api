Rails.application.routes.draw do
  namespace :api do 
    get     '/blogs',       to: 'blogs#index'
    post    '/blogs',       to: 'blogs#create'
    get     '/blogs/:id',   to: 'blogs#show'
    put     '/blogs/:id',   to: 'blogs#edit'
    delete  '/blogs/:id',   to: 'blogs#delete'

    get     '/contacts',   to: 'contacts#index'
    post    '/contacts',   to: 'contacts#create'
  end
end
