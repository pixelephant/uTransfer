class RenameTestimonialsHowToExperiences < ActiveRecord::Migration
  def change
  	rename_column :testimonials, :how, :experiences
  	rename_column :testimonial_translations, :how, :experiences
  end
end
