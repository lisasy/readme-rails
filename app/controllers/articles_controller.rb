class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update,
    :destroy]
  skip_before_filter :verify_authenticity_token

  respond_to :html, :js

  def index
    # current_user.articles
    @articles = Article.all
    @article = Article.new
  end

  def show
    # @article = Article.find(params[:id])
    @article = Parser.new(params[:url])
    doc = @article.parse_text
    @body = doc.body
    @html_body = doc.html_body
    @title = doc.title
    @time = doc.datetime
    @author = doc.author

  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      render action: 'show'
    else
      render action: 'new'
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @article.destroy

    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:url)
    end
end
