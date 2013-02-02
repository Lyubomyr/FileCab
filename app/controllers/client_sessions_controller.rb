class ClientSessionsController < ApplicationController

  def new
    @client_session = ClientSession.new
  end

  def create
    @client_session = ClientSession.new(params[:client_session])
    if @client_session.save
      flash[:notice] = "Sign in successful!"
      client = Client.find_by_email(@client_session.email)
      redirect_to client_url(client)
    else
      render 'new'
    end
  end

  def destroy
    client_session = ClientSession.find
    client_session.destroy
    flash[:notice] = "Sign out successful!"
    redirect_to root_url
  end
end
