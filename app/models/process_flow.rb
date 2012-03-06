class ProcessFlow < ActiveRecord::Base

	translates :text, :title

	has_many :process_flow_translation
	accepts_nested_attributes_for :process_flow_translation

end
