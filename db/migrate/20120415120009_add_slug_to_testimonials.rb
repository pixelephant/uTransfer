class AddSlugToTestimonials < ActiveRecord::Migration
  def change
  	add_column :testimonials, :slug, :string
  end
end
