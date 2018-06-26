class InstrumentsController < ApplicationController

  def new
  	  @instruments = Instrument.new
  end

  def index
  end

  def create
      @instruments = Instrument.new(instrument_params)
      @instruments.user_id = current_user.id
      @instruments.save
      redirect_to user_show_path(current_user)
  end

  def show
      @instrument = Instrument.find(params[:id])
      @user = @instrument.user
  end

  def edit
      instruments = Instrument.find(params[:id])
  end

  def destroy
      user = User.find(params[:id])
      instruments = user.instruments.find(params[:user_id])
      instruments.destroy
      redirect_to user_show_path(current_user)
  end

  private

  def instrument_params
        params.require(:instrument).permit(:instrument_name, :image, :introduction)
    end
end

