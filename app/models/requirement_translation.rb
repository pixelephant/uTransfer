class RequirementTranslation < ActiveRecord::Base

	belongs_to :requirement

	validates :text, :requirement_id, :locale, :presence => true

	def locale_enum
    I18n.available_locales
  end

end
