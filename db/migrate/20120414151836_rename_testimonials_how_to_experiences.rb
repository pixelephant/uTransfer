class RenameTestimonialsHowToExperiences < ActiveRecord::Migration
  def change
  	rename_column :testimonials, :how, :experiences
  end
end
