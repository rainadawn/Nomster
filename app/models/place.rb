class Place < ApplicationRecord
	belongs_to :user
	validates :name, :address, :description, presence:true
	
end
