class RequirementTranslation < ActiveRecord::Base

	belongs_to :requirement

	def locale_enum
    I18n.available_locales
  end

end
