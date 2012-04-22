class HomeController < ApplicationController

  def index
  	@universities = University.all

    render 'index'
  end

end
