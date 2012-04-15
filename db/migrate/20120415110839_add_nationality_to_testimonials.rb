class AddNationalityToTestimonials < ActiveRecord::Migration
  def change
  	add_column :testimonials, :country_id, :integer
  end
end
