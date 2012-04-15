class Country < ActiveRecord::Base
	has_many :personals
	has_many :testimonials
end
