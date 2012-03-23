class IndexContentTranslation < ActiveRecord::Base

	def locale_enum
    I18n.available_locales
  end

end
