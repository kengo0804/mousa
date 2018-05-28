class TopsController < ApplicationController
  def index
      @q = User.ransack(params[:q])
      @users = @q.result(distinct: true)
      @genres = Genre.all
      @affiliations = Affiliation.all
  end

  def search
      @q = User.search(search_params)
      @users = @q.result(distinct: true)
  end

  private
   def user_params
   	   params.require(:user).permit( :first_name,
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

   def search_params
    params.require(:q).permit!
   end
end