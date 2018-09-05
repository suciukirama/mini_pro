class CreatePostBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :post_blogs do |t|
      t.string :title
      t.string :summary
      t.text :content
      t.string :title_image

      t.timestamps
    end
  end
end
