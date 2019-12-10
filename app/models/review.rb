class Review < ApplicationRecord
	belongs_to :swimmer
	belongs_to :user
end
