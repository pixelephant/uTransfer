class Requirement < ActiveRecord::Base

	translates :text

	has_many :requirement_translations
	accepts_nested_attributes_for :requirement_translations

	belongs_to :university

	validates :text, :tution_fee, :university_id, :level, :presence => true

	def level_enum
    {:bsc => 1, :msc => 2, :phd => 3}
  end

end
