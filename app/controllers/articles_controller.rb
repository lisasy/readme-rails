class ArticlesController < ApplicationController

  def index
    # @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:id])
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

end
