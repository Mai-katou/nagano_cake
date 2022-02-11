# frozen_string_literal: true
class Public::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  #def after_sign_up_path_for(resource)
     #public_customers_show_path
  #end
  before_action :customer_state, only:[:create]

  def after_sign_in_path_for(resource)
     customers_my_page_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  #POST /resource/sign_in
  # def create
  #  super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  protected

  def customer_state
    @customer = Customer.find_by(email: params[:customer][:email])
    return if !@customer

     if @customer.valid_password?(params[:customer][:password]) && !@customer.is_deleted?

       # redirect_to  customers_my_page_path

      elsif @customer.valid_password?(params[:customer][:password]) && @customer.is_deleted?
        redirect_to new_customer_registration_path

      else
        redirect_to new_customer_session_path

      end
  end


end
