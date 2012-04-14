class RemoveFacultyFromTestimonials < ActiveRecord::Migration
  def change
  	remove_column :testimonials, :faculty_id
  end
end
