class CpasController < ApplicationController
  def show
    @cpa = Cpa.find(params[:id])
    @client = @cpa.clients.first

    respond_to do |format|
      format.html
      format.xml  { render :xml => @cpa }
    end
  end

  def pass_year
    session[current_user.id] = params[:cpa_year]
    session[current_user.email] = params[:cpa_user]
    redirect_to cpa_documents_path(current_cpa)
  end

end
