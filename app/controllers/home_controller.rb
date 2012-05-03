class HomeController < ApplicationController

  def index
  	@universities = University.all
  	@testimonials = Testimonial.where(:index_page => 1)
  	@blogposts = WpBlogPost.limit(3).where(:post_status => 'publish')

    render 'index'
  end

end
