class AddImageFilesToTestimonials < ActiveRecord::Migration
  def change
  	rename_column :testimonials, :image_file, :full_image
  	add_column :testimonials, :slider_image, :string
  	add_column :testimonials, :index_image, :string
  	add_column :testimonials, :video, :string
  end
end
