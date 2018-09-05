class PostBlogsController < ApplicationController
  before_action :set_post_blog, only: [:show, :edit, :update, :destroy]

  # GET /post_blogs
  # GET /post_blogs.json
  def index
    @post_blogs = PostBlog.all
  end

  # GET /post_blogs/1
  # GET /post_blogs/1.json
  def show
  end

  # GET /post_blogs/new
  def new
    @post_blog = PostBlog.new
  end

  # GET /post_blogs/1/edit
  def edit
  end

  # POST /post_blogs
  # POST /post_blogs.json
  def create
    @post_blog = PostBlog.new(post_blog_params)

    respond_to do |format|
      if @post_blog.save
        format.html { redirect_to @post_blog, notice: 'Post blog was successfully created.' }
        format.json { render :show, status: :created, location: @post_blog }
      else
        format.html { render :new }
        format.json { render json: @post_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_blogs/1
  # PATCH/PUT /post_blogs/1.json
  def update
    respond_to do |format|
      if @post_blog.update(post_blog_params)
        format.html { redirect_to @post_blog, notice: 'Post blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_blog }
      else
        format.html { render :edit }
        format.json { render json: @post_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_blogs/1
  # DELETE /post_blogs/1.json
  def destroy
    @post_blog.destroy
    respond_to do |format|
      format.html { redirect_to post_blogs_url, notice: 'Post blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_blog
      @post_blog = PostBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_blog_params
      params.require(:post_blog).permit(:title, :summary, :content, :title_image)
    end
end
