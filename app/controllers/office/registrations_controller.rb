class Office::RegistrationsController < Devise::RegistrationsController
	private 

	   def sign_up_params
    params.require(:office).permit(:first_name, :last_name, :address, :apt_num, :city, :state, :zip_code, :email, :password, 
    	:password_confirmation, :business_category, :business_name, :dob, :card_name, :card_number, :exp_month, :exp_year,
    	 :cvv, :billing_address,:billing_apt_num, :billing_state, :billing_city, :billing_zip_code, :routing_number, :account_number )
  end

  def account_update_params
    params.require(:office).permit(:first_name, :last_name, :address, :apt_num, :city, :state, :zip_code, :email, :password, 
    	:password_confirmation, :current_password, :business_category, :business_name, :dob, :card_name, :card_number, :exp_month, :exp_year,
    	 :cvv, :billing_address,:billing_apt_num, :billing_state, :billing_city, :billing_zip_code, :routing_number, :account_number )
  end


end
       