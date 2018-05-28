class OrdersController < ApplicationController
  def index
  end

  def create
  	  order = Order.new(order_params)
      order.user_id = current_user.id
      order.save

      reception = order.receptions.build(user_id: order.receveid)
      reception.save

      redirect_to user_show_path(current_user.id)

  end

  private

    def order_params
        params.require(:order).permit(:course,
                                      :budget,
                                      :delivery_date,
                                      :description,
                                      :receveid,
                                      :reply_deadline)
    end
end

