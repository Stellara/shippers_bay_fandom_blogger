class ArticlesController < ApplicationController
  include ArticlesHelper

  def index 
    @articles = Article.all   
  end 

  def show 
    retrieve_article
  end 

  def new 
    @article = Article.new
  end 

  def create 
    @article = Article.create!(article_params)
    redirect_to article_path(@article)
  end 

  def destroy 
    retrieve_article.destroy
    redirect_to articles_path
  end 

  def edit 
    retrieve_article
  end 

  def update 
    retrieve_article.update(article_params)
    redirect_to article_path(@article)
  end 
end
