class HomeController < ApplicationController
  def index
     @blogs = Blog.paginate(page: params[:page], per_page: 2)
  end
end
