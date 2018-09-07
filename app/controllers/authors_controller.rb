class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
<<<<<<< HEAD

    if @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    if @author = Author.update(author_params)
=======
    if @author.valid?
      @author = Author.create(author_params)
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.new(author_params)

    if @author.valid?
      @author = Author.find(params[:id])
      @author = Author.update(author_params)
>>>>>>> 8d2bcacd0d6d450873ec43b9b5074d289fa0efb3
      redirect_to @author
    else
      render :edit
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
