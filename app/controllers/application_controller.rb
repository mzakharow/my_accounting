class ApplicationController < ActionController::Base
  #  ADMIN_CHANGEABLE_CONTROLLER = %w[transfers].freeze
  #  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :deny_user, only: %i[new create edit update destroy],
  #                if: proc { ADMIN_CHANGEABLE_CONTROLLER.include? "#{controller_name}" }
  ## before_action :get_categories

  private

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: %i[firstname lastname phone address])
    # devise_parameter_sanitizer.permit(:account_update, keys: %i[firstname lastname phone address])
    # # devise_parameter_sanitizer.permit(:sign_in, keys: [:firstname, :lastname, :phone, :address])
  end

  def deny_user
    # if current_user.nil? || current_user && !current_user.admin?
    #   redirect_to root_path
    # end
  end
end
