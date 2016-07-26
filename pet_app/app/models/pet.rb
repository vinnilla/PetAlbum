class Pet < ApplicationRecord
	belongs_to :user
	has_many :albums

	attr_reader :user_id

	def get_user_id
		@user_id
	end

end
