class ClientsController < ApplicationController
  
  before_filter :lookup_client

  def index
  	@client = Client.all
  end

  def new
		@client = Client.new
  end

  def show
    @client = Client.find(params[:id])
  end

  def create
		if @client.save
      flash[:notice] = "Your client has been saved."
      render :index
    else
      flash[:error] = "Your client couldn't be saved. #{@client.errors.full_messages.join}"
      render :new
    end
  end

   protected

  def lookup_client
    if params[:id]
      @client = Client.find(params[:id])
    else
      @client = Client.new(params[:client])
    end
  end
end
