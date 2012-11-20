class MileageRecordsController < ApplicationController
  
  before_filter :lookup_mileage_record

  def index
  	@mileage_records = MileageRecord.where(:subcontractor_id => current_user)
  end

  def create
		if @mileage_record.save
      flash[:notice] = "Your mileage was recorded successfully!"
      redirect_to :root
    else
      flash[:error] = "Your mileage couldn't be saved. #{@mileage_record.errors.full_messages.join}"
      render :new
    end
  end


protected

  def lookup_mileage_record
    if params[:id]
      @mileage_record = MileageRecord.find(params[:id])
    else
      @mileage_record = MileageRecord.new(params[:mileage_record])
    end
  end
end
