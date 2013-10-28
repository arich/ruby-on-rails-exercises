class Order < ActiveRecord::Base
	validates_presence_of :customer_name, :customer_email, :description, :price
	validate :completion_date_must_be_in_past

	belongs_to :brand

	scope :unpaid, -> { where("paid_for_on is null") }



	def completion_date_must_be_in_past
	  errors.add(:completed_on, "Can't be in the future") if completed_on && completed_on > Time.now
	end
end
