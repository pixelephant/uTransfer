class TestimonialController < ApplicationController

  def index
    tes = Testimonial.limit(1).find_by_default_for(I18n.locale.to_s)
    tes ||= Testimonial.first
    redirect_to testimonial_url(tes)
  end

  def show
		@testimonial = Testimonial.find(params[:id])
		@testimonials = Testimonial.all
		@experience_images = Testimonial.find(params[:id]).experience_images.limit(4)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testimonial }
    end
  end

end
