class UniversityController < ApplicationController

  def index
  	uni = University.limit(1).find_by_default_for(I18n.locale.to_s)
    redirect_to university_url(uni)
  end

	def show
		@university = University.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category }
    end
  end

end
