class LinksController < ApplicationController

  def index

  end

  def new

  end

  def create
    user_id = params[:user_id]
    slug = params[:slug]
    target_url = params[:target_url]
    link = Link.new(user_id: user_id, slug: slug, target_url: target_url)
    if @link.save
      redirect_to '/'
    else
      redirect_to ''
    end
  end 
end
