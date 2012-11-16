class SubcontractorsController < ApplicationController
  
  before_filter :lookup_subcontractor

	def index
    if subcontractor_signed_in?
      @subcontractor = Subcontractor.find(current_subcontractor)
    else
  		@subcontractor = Subcontractor.all
    end
	end	

  def show
      @subcontractor = Subcontractor.find(params[:id])
  end 

	def create
		if @subcontractor.save
      flash[:notice] = "Welcome! You have signed up successfully."
      render :show
    else
      flash[:error] = "Your subcontractor account couldn't be saved. #{@subcontractor.errors.full_messages.join}"
      render :new
    end
	end
  
  protected

  def lookup_subcontractor
    if params[:id]
      @subcontractor = Subcontractor.find(params[:id])
    else
      @subcontractor = Subcontractor.new(params[:subcontractor])
    end
  end
end
