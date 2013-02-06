class CpasController < ApplicationController
  def show
    @cpa = Cpa.find(params[:id])
    @client = @cpa.clients.first

    respond_to do |format|
      format.html
      format.xml  { render :xml => @cpa }
    end
  end
end
