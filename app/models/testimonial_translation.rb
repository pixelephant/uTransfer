class TestimonialTranslation < ActiveRecord::Base

	belongs_to :testimonial

	validates :quote, :about, :testimonial_id, :how, :locale, :presence => true

	def locale_enum
    I18n.available_locales
  end

end
