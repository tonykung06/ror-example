class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :blog_post_id
      t.string :email
      t.string :comment

      t.timestamps null: false
    end
  end
end
