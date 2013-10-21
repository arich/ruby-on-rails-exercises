class WelcomeController < ApplicationController

  def index
    @unpaid_order_count = Order.unpaid.count
  end

end