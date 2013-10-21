class Order < ActiveRecord::Base
	validates_presence_of :customer_name, :customer_email, :description, :price

	scope :unpaid, -> { where("paid_for_on is null") }
end
