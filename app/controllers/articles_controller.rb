class ArticlesController < ApplicationController

  def index 
    @articles = Article.all   
  end 

  def show 
    article
  end 

  def new 
    @article = Article.new
  end 

  def create 
    @article = Article.create(article_params)
    flash.notice = "Article '#{@article.title}' was created!"
    redirect_to article_path(@article)
  end 

  def destroy 
    article.destroy
    flash.notice = "Article '#{@article.title}' was destroyed!"
    redirect_to articles_path
  end 

  def edit 
    article
  end 

  def update 
    article.update(article_params)
    flash.notice = "Article '#{article.title}' is updated!"
    redirect_to article_path(article)
  end 

  private 

  def article_params 
    params.require(:article).permit(:title, :body)
  end 

  def article 
    @article ||= Article.find(params[:id])
  end 
end