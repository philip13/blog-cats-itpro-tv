class Comment < ApplicationRecord
	belongs_to :post # check is on singular / it can have the avility to get his parent
end
