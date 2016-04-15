class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def new
  end
  def create
    @article = Article.new(params[:article])

    @article.save
    redirect_to @article

  end
end
