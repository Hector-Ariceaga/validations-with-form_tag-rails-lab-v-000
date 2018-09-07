class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

<<<<<<< HEAD
    if @post.save
=======
    if @post.valid?
      @post = Post.create(post_params)
>>>>>>> 8d2bcacd0d6d450873ec43b9b5074d289fa0efb3
      redirect_to @post
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.new(post_params)

<<<<<<< HEAD
    if @post.update(post_params)
=======
    if @post.valid?
      @post = Post.find(params[:id])
      @post.update(post_params)

>>>>>>> 8d2bcacd0d6d450873ec43b9b5074d289fa0efb3
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
