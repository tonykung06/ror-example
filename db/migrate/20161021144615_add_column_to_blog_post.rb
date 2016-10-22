class AddColumnToBlogPost < ActiveRecord::Migration
  def change
    add_column :blog_posts, :ispublished, :boolean
  end
end
