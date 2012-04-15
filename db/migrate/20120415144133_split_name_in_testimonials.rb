class SplitNameInTestimonials < ActiveRecord::Migration
  def up
  	rename_column :testimonials, :name, :first_name
  	add_column :testimonials, :last_name, :string
  end
end
