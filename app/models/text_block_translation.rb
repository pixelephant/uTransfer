class TextBlockTranslation < ActiveRecord::Base
	belongs_to :text_block

	validates :text_block_id, :locale, :text, :title, :presence => true

	def locale_enum
    I18n.available_locales
  end
end
