class Pet < ApplicationRecord
	belongs_to :user
	has_many :albums

	def self.search(search)
		# if search
		# 	find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
		# else
		# 	find(:all)
		# end
		where("search_terms ILIKE ?", "%#{search}%")
	end

end
