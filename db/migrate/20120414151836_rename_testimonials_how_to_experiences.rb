class RenameTestimonialsHowToExperiences < ActiveRecord::Migration
  def change
  	rename_column :testimonials, :how, :experience
  	rename_column :testimonial_translations, :how, :experience
  end
end
