class TextBlock < ActiveRecord::Base

	translates :text, :title

	has_many :text_block_translation
	accepts_nested_attributes_for :text_block_translation

	has_many :medias

	default_scope :order => 'position ASC'

	validates :title, :text, :position, :presence => true
	validates :position, :uniqueness => true

	def default_for_enum
    I18n.available_locales
  end

	def visual_enum
    {:one_col => 1, :two_col => 2, :with_pic => 3, :pic_only => 4}
  end

end
