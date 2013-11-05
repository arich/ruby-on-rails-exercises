class Order < ActiveRecord::Base
	validates_presence_of :customer_name, :customer_email, :description, :price, :frame_id
	validate :completion_date_must_be_in_past

	belongs_to :frame

	scope :paid, -> { where("paid_for_on is not null") }
	scope :unpaid, -> { where("paid_for_on is null") }
	scope :uncompleted, -> { where("completed_on is null") }


	def Order.uncompleted
		where("completed_on is null")
	end

	def completion_date_must_be_in_past
	  errors.add(:completed_on, "Can't be in the future") if completed_on && completed_on > Time.now
	end
end
