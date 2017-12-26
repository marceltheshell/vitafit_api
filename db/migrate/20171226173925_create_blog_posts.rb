class CreateBlogPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_posts, id: :uuid do |t|
      t.string :title
      t.string :content
      t.string :author
      t.datetime :date
      t.integer :views
      t.timestamps
    end
  end
end
