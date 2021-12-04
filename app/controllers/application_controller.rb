class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:start_weight, :goal_weight, :age, :gender, :height])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:start_weight, :goal_weight, :age, :gender, :height])
  end

end
