class AuthorSessionsController < ApplicationController
  def new 
    @author = Author.new
  end 

  def create 
    if @author = login(params[:email], params[:password])
      redirect_back_or_to(articles_path, notice: "You are now logged in.")
    else 
      flash.now.alert = "Login failed. Please try again."
      render action: :new
    end 
  end 

  def destroy 
    logout 
    redirect_to(root_path, notice: "You are now logged out.")
  end 
end
