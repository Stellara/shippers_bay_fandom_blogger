class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]

  def index 
    @tags = Tag.all 
  end 

  def show 
    tag
  end 

  def destroy 
    tag.destroy 
    flash.notice = "Tag #{tag.name} was deleted!"
    redirect_to tags_path
  end

  private 

  def tag 
    @tag ||= Tag.find(params[:id])
  end 
end
