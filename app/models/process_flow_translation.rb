class ProcessFlowTranslation < ActiveRecord::Base

	belongs_to :process_flow

	validates :process_flow_id, :text, :title, :locale, :presence => true

	def locale_enum
    I18n.available_locales
  end

end
