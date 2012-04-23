class HomeController < ApplicationController

  def index
  	@universities = University.all
  	@testimonials = Testimonial.where(:index_page => 1)

    render 'index'
  end

end
