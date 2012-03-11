class EssentialTextTranslation < ActiveRecord::Base
	belongs_to :essential_text

	validates :essential_text_id, :locale, :title, :text, :presence => true

	def locale_enum
    I18n.available_locales
  end
end
