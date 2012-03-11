class UniversityTranslation < ActiveRecord::Base
	belongs_to :university

	validates :university_id, :description, :locale, :campus, :presence => true

	def locale_enum
    I18n.available_locales
  end
end
