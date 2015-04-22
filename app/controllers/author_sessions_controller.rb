class AuthorSessionsController < ApplicationController
  def new 
  end 

  def create 
    if login(params[:email], params[:password])
  end 

  def destroy 
  end 
end
