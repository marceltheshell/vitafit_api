Rails.application.routes.draw do
  namespace :api do 
    get     '/blog',       to: 'blog_posts#index'
    get     '/blog/:id',   to: 'blog_posts#show'
    post    '/blog',       to: 'blog_posts#create'
    put     '/blog/:id',   to: 'blog_posts#edit'
    delete  '/blog/:id',   to: 'blog_posts#delete'
  end
end
