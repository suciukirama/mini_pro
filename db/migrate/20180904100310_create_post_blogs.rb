class CreatePostBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :post_blogs do |t|
      t.string :title
      t.string :summary
      t.text :content
      t.string :title_image
      t.integer :user_id

      t.timestamps
    end

    add_index :post_blogs, :title
    add_foreign_key :post_blogs, :users, column: :user_id

      
    end
  end
end
