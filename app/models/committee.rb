class Committee < ActiveRecord::Base
	has_many :votes
	has_many :constituencies
	has_and_belongs_to_many :voivodeships

end
