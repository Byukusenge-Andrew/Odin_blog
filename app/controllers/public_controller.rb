class PublicController < ApplicationController
  def index
    #fetch all psts
    @posts = Post.all 
  end
end
