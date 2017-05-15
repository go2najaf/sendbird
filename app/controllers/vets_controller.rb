class VetsController < ApplicationController

	def new 
		@vet = Vet.new 
	end 

	def create 
		@vet = Vet.new(vet_params)
		@vet.office_id = current_office.id
		respond_to do |f| 
			if (@vet.save)
				f.html {redirect_to "" , notice: "Vet Added to Your Office"}
			else 
				f.html {redirect_to "" , notice: "Vet Cannot Be Saved "}
			end 
		end 
	end 


			private 

			def vet_params
				params.require(:vet).permit(:office_id, :image, :vet_name, :about, :website, :facebook, :twitter, :linkedin)
		end 
	end 

