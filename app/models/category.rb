class Category < ActiveRecord::Base
	has_many :notes

	def category_name
		self.name
	end

end
