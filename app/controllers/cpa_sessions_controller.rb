class CpaSessionsController < ApplicationController

  def new
    @cpa_session = CpaSession.new
  end

  def create
    @cpa_session = CpaSession.new(params[:cpa_session])
    if @cpa_session.save
      flash[:notice] = "Sign in successful!"
      cpa = Cpa.find_by_email(@cpa_session.email)
      redirect_to cpa_url(cpa)
    else
      render 'new'
    end
  end

  def destroy
    cpa_session = CpaSession.find
    cpa_session.destroy
    flash[:notice] = "Sign out successful!"
    redirect_to root_url
  end
end
