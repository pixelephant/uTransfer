class Testimonial < ActiveRecord::Base

	translates :quote, :about, :how

	has_many :testimonial_translation
	accepts_nested_attributes_for :testimonial_translation

end
