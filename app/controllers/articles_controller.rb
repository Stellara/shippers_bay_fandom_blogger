class ArticlesController < ApplicationController
  #Prefix   verb  URI Pattern          Controller#Action 
  #articles GET   /articles(.:format)  articles#index

  def index 
    @articles = Article.all   
  end 

  def show 
    @article = Article.find(params[:id])
  end 
end
