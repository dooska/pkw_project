class Voivodeship < ActiveRecord::Base
	has_and_belongs_to_many :committees, :join_table => :committees_voivodeships
	has_many :constituencies
	accepts_nested_attributes_for :constituencies, :allow_destroy => true
#	has_many :votes, through: :constituencies

	

end
