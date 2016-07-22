class Pet < ApplicationRecord
	has_one :user
	has_many :albums
end
