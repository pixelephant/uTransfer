class AddCareerToTestimonials < ActiveRecord::Migration
  def change
  	add_column :testimonials, :career, :text
  end
end
