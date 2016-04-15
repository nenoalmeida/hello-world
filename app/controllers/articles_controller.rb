class ArticlesController < ApplicationController
  def create
    @article = Article.new(params[:article])

    @article.save
    redirect_to @article
  end

  def show
    @article = Article.find(params[:id])
  end
  def new
  end
#snippet for brevity
end
