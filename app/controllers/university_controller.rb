class UniversityController < ApplicationController

  def index
  	uni = University.limit(1).find_by_default_for(I18n.locale.to_s)
    redirect_to university_url(uni)
  end

	def show
		@university = University.find(params[:id])
    @community_images = University.limit(6).find(params[:id]).university_community_images
    session[:university_id] = @university.id

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @university }
    end
  end

  def universities_faculties

    if(params[:todo] == 'init')
      unless(session[:university_id].blank?)
        faculties = Faculty.find_by_sql(["select * from faculties where university_id=? AND level='bsc'", session[:university_id]])
        session[:university_id] = nil
      else
        faculties = nil
      end
    else
      id = params[:id]
      level = params[:level]
      faculties = Faculty.find_by_sql(["select * from faculties where university_id=? AND level=?", id, level])
    end

    respond_to do |format|
      format.json { render json: faculties }
    end
  end

end
