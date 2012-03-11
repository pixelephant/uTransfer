class Personal < ActiveRecord::Base
	belongs_to :university
	belongs_to :faculty
end
