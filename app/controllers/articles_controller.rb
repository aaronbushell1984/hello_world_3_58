class ArticlesController < ApplicationController

  def show
    # used to debug - left as example learning code
    # binding.break
    @article = Article.find(params[:id])
  end
end
