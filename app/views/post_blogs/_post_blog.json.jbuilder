json.extract! post_blog, :id, :title, :summary, :content, :title_image, :created_at, :updated_at
json.url post_blog_url(post_blog, format: :json)
