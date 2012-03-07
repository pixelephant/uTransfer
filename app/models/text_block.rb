class TextBlock < ActiveRecord::Base

	translates :text, :title

	has_many :text_block_translation
	accepts_nested_attributes_for :text_block_translation

	has_many :media

	default_scope :order => 'position ASC'

	def default_for_enum
    I18n.available_locales
  end

end
