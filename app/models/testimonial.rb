class Testimonial < ActiveRecord::Base

	extend FriendlyId
	friendly_id :first_name, use: :slugged

	translates :quote, :about, :experience

	has_many :testimonial_translation
	has_many :experience_images
	belongs_to :country

	accepts_nested_attributes_for :testimonial_translation

	belongs_to :university

	mount_uploader :full_image, TestimonialUploader
	mount_uploader :slider_image, TestimonialUploader
	mount_uploader :index_image, TestimonialUploader

	validates :first_name, :last_name, :quote, :about, :university_id, :experience, :presence => true

	def default_for_enum
    I18n.available_locales
  end

end
