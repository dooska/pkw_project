class Constituency < ActiveRecord::Base
	has_many :votes
	belongs_to :voivodeship
	# belongs_to :constituency
end
