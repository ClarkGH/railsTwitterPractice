class ArticlesController < ApplicationController
  def new 
  end

  # Create new article C
  def create
    @article = Article.new(article_params)
    # validation check in 'if'
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  # get edit page R
  def edit
    @article = Article.find(params[:id])
  end

  # Update article U
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
  
  # show single R
  def show
    @article = Article.find(params[:id])
  end

  # show all R
  def index
    @articles = Article.all
  end

  private
    def article_params
      params.require(:article).permit(:title,:text)
    end
end
