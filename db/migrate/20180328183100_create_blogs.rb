class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs, id: :uuid do |t|
    t.string :title
	t.string :content
	t.string :author, default: "MayraHall"
	t.integer :views, default: 0
	t.timestamps
    end
  end
end
