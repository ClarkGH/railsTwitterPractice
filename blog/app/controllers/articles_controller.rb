class ArticlesController < ApplicationController
  def new 
  end

  # Create new article C
  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
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
