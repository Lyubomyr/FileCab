class ClientsController < ApplicationController
  def show
    @client = Client.find(params[:id])
    @cpa = @client.cpa

    respond_to do |format|
      format.html
      format.xml  { render :xml => @client }
    end
  end

  def pass_year
    session[current_user.id] = params[:year]
    session[current_user.email] = params[:user]
    redirect_to client_documents_path(current_client)
  end

end
