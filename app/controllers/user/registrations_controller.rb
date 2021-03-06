# frozen_string_literal: true

class User::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  def update
    name = params[:user][:name]
    phone = params[:user][:phone]
    profile_pic = params[:user][:profile_pic]
    if current_user.shop?
      address = params[:user][:address]
      description = params[:user][:description]
      banner_pic = params[:user][:banner_pic]
      current_user.address = address
      current_user.description = description
      current_user.banner_pic = banner_pic
    end
    current_user.name = name
    current_user.phone = phone
    current_user.profile_pic = profile_pic
    current_user.save
    redirect_to root_path
  end

  def upgrade
    if current_user.user?
      current_user.shop!
    end
    redirect_to edit_user_registration_path, notice: 'ahora eres una tienda'
  end
  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
