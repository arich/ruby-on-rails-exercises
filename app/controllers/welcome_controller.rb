class WelcomeController < ApplicationController

  def index
    @unpaid_order_count = Order.unpaid.count
    @uncompleted_order_count = Order.uncompleted.count
  end

end