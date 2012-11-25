class JobLogsController < ApplicationController
  
  before_filter :lookup_job_log

  def index
  	@job_logs = JobLog.where(:subcontractor_id => current_user)
  end

  def create
		if @job_log.save
      flash[:notice] = "Your mileage and time were recorded successfully!"
      redirect_to :root
    else
      flash[:error] = "Your mileage couldn't be saved. #{@job_log.errors.full_messages.join}"
      render :new
    end
  end


protected

  def lookup_job_log
    if params[:id]
      @job_log = JobLog.find(params[:id])
    else
      @job_log = JobLog.new(params[:job_log])
    end
  end
end
