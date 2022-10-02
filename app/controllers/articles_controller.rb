class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    # used to debug - left as example learning code
    # binding.break
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    end
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end
end
