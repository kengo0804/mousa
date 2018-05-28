class UsersController < ApplicationController

   def index
      @user = User.all
      @search = User.ransack(params[:q])
      @result = @search.result
      render "tops/index"
   end

   def new
   end

   def show
       @user = User.find(params[:id])
       @order = Order.new
       @order.receveid = @user.id

       @q = User.ransack(params[:q])
       @users = @q.result(distinct: true)
       @genres = Genre.all
       @affiliations = Affiliation.all
   end

   def edit
       @user = current_user
   end

   def update
   	   @user = current_user
   	   @user.update(user_params)
   	   redirect_to user_show_path(@user.id)
   end

   def create
         @user = current_user
         order = Order.new(order_params)
         order.save
         redirect_to user_show_path(@user.id)
   end

   def destroy
      instruments = Instrument.find(params[:id])
      instruments.destroy
      redirect_to user_show_path(current_user)
   end

  private
    def user_params
        params.require(:user).permit(:first_name,
        	                           :last_name,
        	                           :first_kana,
        	                           :last_kana,
        	                           :tell,
        	                           :email,
        	                           :user_image,
        	                           :titile,
        	                           :body,
                                     :genre_id,
                                     :affiliation_id)
    end

    def instrument_params
        params.require(:instrument).permit(:instrument_name,
                                           :image)
    end

    def order_params
        params.require(:order).permit(:course,
                                      :budget,
                                      :delivery_date,
                                      :description)
    end
    def genre_params
        params.require(:genre).permit(:genre_name)
    end
    def genre_params
        params.require(:affiliation).permit(:affiliation_name)
    end
end


