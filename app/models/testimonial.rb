class Testimonial < ActiveRecord::Base

	translates :quote, :about, :how

	has_many :testimonial_translation
	accepts_nested_attributes_for :testimonial_translation

	belongs_to :university

	mount_uploader :image_file, TestimonialUploader

	validates :name, :quote, :about, :university_id, :how, :image_file, :presence => true

	def default_for_enum
    I18n.available_locales
  end

end
