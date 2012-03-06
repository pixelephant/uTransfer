class ProcessFlowTranslation < ActiveRecord::Base

	belongs_to :process_flow

	def locale_enum
    I18n.available_locales
  end

end
