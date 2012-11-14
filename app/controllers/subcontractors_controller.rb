class SubcontractorsController < ApplicationController
  
  before_filter :lookup_subcontractor

	def index
    if user_signed_in?
  		@subcontractor = Subcontractor.where(:user_id => current_user)
    else
      "Please sign in!"
    end
	end	

  def show
    @subcontractor = Subcontractor.find(current_user)
  end 

	def new
		@subcontractor = Subcontractor.new
	end

	def create
    @subcontractor.user = current_user
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
