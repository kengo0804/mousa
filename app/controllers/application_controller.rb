class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name,:first_kana,:last_kana,:tell])
    #editのとき保存をデバイズに許可させる
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name,:last_name,:first_kana,:last_kana,:tell,:user_image,:title,:body,:genre_id])
  end

  private
   def after_sign_in_path_for(resource_or_scope)
       top_path
   end
end