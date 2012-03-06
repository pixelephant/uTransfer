class TextBlockTranslation < ActiveRecord::Base
	belongs_to :text_block

	def locale_enum
    I18n.available_locales
  end
end
