class SubcontractorsController < ApplicationController
  
  before_filter :lookup_subcontractor

	def index
		@subcontractor = Subcontractor.all
	end	

	def new
		@subcontractor = Subcontractor.new
	end

	def create
		if @subcontractor.save
      flash[:notice] = "Welcome! You have signed up successfully."
      redirect_to subcontractors_index_path
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
