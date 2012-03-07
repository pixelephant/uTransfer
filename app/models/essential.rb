class Essential < ActiveRecord::Base
	translates :topic

	has_many :essential_texts

	has_many :essential_translations
	accepts_nested_attributes_for :essential_translations

	default_scope :order => 'position ASC'

	validates :topic, :position, :presence => true
end
