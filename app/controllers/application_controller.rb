class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  helper_method :resource, :resource_name, :devise_mapping

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:last_name, :first_name, :middle_name, :policy, :data_brith,
                                                            :mobile, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:last_name, :first_name, :middle_name, :policy, :data_brith,
                                                            :mobile, :email, :password, :password_confirmation, :remember_me) }
  end
end
