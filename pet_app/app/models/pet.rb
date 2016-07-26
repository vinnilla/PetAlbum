class Pet < ApplicationRecord
	# belongs_to :user
	has_many :albums
	has_many :photos, through: :albums

	has_and_belongs_to_many :users

	def self.search(search)
		# if search
		# 	find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
		# else
		# 	find(:all)
		# end
		where("search_terms ILIKE ?", "%#{search}%")
	end

end
