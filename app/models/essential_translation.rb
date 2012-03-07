class EssentialTranslation < ActiveRecord::Base
	belongs_to :essential

	validates :essential_id, :locale, :topic, :presence => true

	def locale_enum
    I18n.available_locales
  end
end
