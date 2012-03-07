class FamousGraduateTranslation < ActiveRecord::Base
	belongs_to :famous_graduate

	validates :title, :famous_graduate_id, :locale, :presence => true

	def locale_enum
    I18n.available_locales
  end
end
