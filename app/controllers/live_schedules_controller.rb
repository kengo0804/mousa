class LiveSchedulesController < ApplicationController

	def new
		@live_schedules = Live_schedule.new
	end

	def show
	end

	def edit
	end

	def create
        @live_schedules = Live_schedule.new(live_schedule_params)
        @live_schedules.user_id = current_user.id
        @live_schedules.save
        redirect_to user_show_path(current_user)
  end

	private
	def live_params
		params.require(:live_schedule).permit(:live_title, :image, :live_date, :live_location, :live_price)
	end

end