Rails.application.routes.draw do
  namespace :api do 
    get     '/blog',       to: 'blog_posts#index'
    post    '/blog',       to: 'blog_posts#create'
    get     '/blog/:id',   to: 'blog_posts#show'
    put     '/blog/:id',   to: 'blog_posts#edit'
    delete  '/blog/:id',   to: 'blog_posts#delete'

    get     '/contact',   to: 'contacts#index'
    post    '/contact',   to: 'contacts#create'
  end
end
