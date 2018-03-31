Rails.application.routes.draw do
  namespace :api do 
    get     '/blogs',       to: 'blog_posts#index'
    post    '/blogs',       to: 'blog_posts#create'
    get     '/blogs/:id',   to: 'blog_posts#show'
    put     '/blogs/:id',   to: 'blog_posts#edit'
    delete  '/blogs/:id',   to: 'blog_posts#delete'

    get     '/contacts',   to: 'contacts#index'
    post    '/contacts',   to: 'contacts#create'
  end
end