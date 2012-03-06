class EssentialTextTranslation < ActiveRecord::Base
	belongs_to :essential_text

	def locale_enum
    I18n.available_locales
  end
end
