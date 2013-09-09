class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update,
    :destroy]
  skip_before_filter :verify_authenticity_token

  respond_to :html, :js

  def index
    # current_user.articles
    @articles = Article.paginate :page => params[:page], :per_page => 10
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    article = Parser.new(@article.url)
    document = article.parse_text

    @article.title = document.title
    @article.body = document.html_body
    @article.date = document.datetime
    @article.author = document.author

    if @article.save
      redirect_to @article
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

  def error_page

  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:url, :title, :body, :date, :author)
    end
end
