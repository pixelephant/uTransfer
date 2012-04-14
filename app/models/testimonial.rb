class Testimonial < ActiveRecord::Base

	translates :quote, :about, :experience

	has_many :testimonial_translation
	has_many :experience_images
	accepts_nested_attributes_for :testimonial_translation

	belongs_to :university

	mount_uploader :image_file, TestimonialUploader

	validates :name, :quote, :about, :university_id, :experience, :presence => true

	def default_for_enum
    I18n.available_locales
  end

end
