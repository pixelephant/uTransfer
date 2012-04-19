class Faculty < ActiveRecord::Base

	translates :desc, :name

	has_many :faculty_translation
	accepts_nested_attributes_for :faculty_translation

	belongs_to :university

	validates :name, :desc, :university_id, :presence => true

	def level_enum
    {:bsc => "BSc", :msc => "MSc", :phd => "PhD", :preschool => "Pre-school"}
  end

end
