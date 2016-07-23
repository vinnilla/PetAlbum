class Follower < ApplicationRecord
	belongs_to :user, :pet
end
