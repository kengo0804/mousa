class Instrument < ApplicationRecord
	attachment :image
	belongs_to :user
end
