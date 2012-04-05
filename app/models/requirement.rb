class Requirement < ActiveRecord::Base

	translates :text

	has_many :requirement_translations
	accepts_nested_attributes_for :requirement_translations

	belongs_to :university

	validates :text, :tution_fee, :university_id, :level, :presence => true

	def level_enum
    {:bsc => "BSc", :msc => "MSc", :phd => "PhD", :preschool => "Pre-school"}
  end

end
