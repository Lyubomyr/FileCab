class ClientsController < ApplicationController
  def show
    @client = Client.find(params[:id])
    @cpa = @client.cpa

    respond_to do |format|
      format.html
      format.xml  { render :xml => @client }
    end
  end

end
