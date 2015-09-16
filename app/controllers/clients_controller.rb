class ClientsController < ApplicationController
  
  def index
    @clients = Client.all
    @stocks = ClientStock.joins(:stock, :client)
  end

  def new
    @client = Client.new
  end

  def create
    client = Client.new(client_params) 
    if client.save
      redirect_to client
    else
      render :new
    end
  end

  def show
    @client = Client.find(params[:id])

  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    client = Client.find(params[:id])
    if client.update(client_params) 
      redirect_to client
    else
      render :edit
    end
  end

  def destroy
    client = Client.find(params[:id])
    if client.delete
      redirect_to root_path
    else
      render :edit
    end
  end

  def client_params
    params.require(:client).permit(:name, :cash_balance, :share_balance)
  end

end
