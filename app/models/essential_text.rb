class EssentialText < ActiveRecord::Base
	translates :title, :text

	belongs_to :essential

	has_many :essential_text_translation
	accepts_nested_attributes_for :essential_text_translation

	validates :essential_id, :title, :text, :presence => true
end
