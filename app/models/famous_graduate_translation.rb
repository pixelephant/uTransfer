class FamousGraduateTranslation < ActiveRecord::Base
	belongs_to :famous_graduate

	def locale_enum
    I18n.available_locales
  end
end
