class CreateWpBlogPosts < ActiveRecord::Migration
  def change
    create_table :wp_blog_posts do |t|

      t.timestamps
    end
  end
end
