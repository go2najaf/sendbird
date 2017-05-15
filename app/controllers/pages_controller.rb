class PagesController < ApplicationController
  def Index
  end

  def Home
  	@vets = Vet.all 
  end

  def Profile
  	if (User.find_by_first_name(params[:id]))
  		@first_name = params[:id]
  	else 
  		redirect_to root_path, :notice => "user not found"
  	end 

  	@pets = Pet.all.where("user_id = ? ", User.find_by_first_name(params[:id]).id)
  	@newPet = Pet.new
  end

  def Explore
  	@vets = Vet.all 
  end

  def Office
    if (Office.find_by_business_name(params[:id]))
      @business_name = params[:id]
    else 
      redirect_to root_path, :notice => "office not found"
    end 
  @vets = Vet.all.where("office_id = ? ", Office.find_by_business_name(params[:id]).id)
    @newVet = Vet.new
  end

  def Vet 
  end 




end
