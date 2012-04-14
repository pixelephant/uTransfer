class TestimonialTranslation < ActiveRecord::Base

	belongs_to :testimonial

	validates :quote, :about, :testimonial_id, :experience, :locale, :presence => true

	def locale_enum
    I18n.available_locales
  end

end
