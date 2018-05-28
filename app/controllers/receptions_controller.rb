class ReceptionsController < ApplicationController

  def index
  end

  def show
  end

  def create
  	reception = Reception.new(params_reception)
  	reception.save
  end

  def destroy
  end

  private
  def params_reception
        params.require(:reception).permit(:user_id, :order_id)
  end

end
