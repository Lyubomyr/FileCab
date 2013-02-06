class DocumentsController < ApplicationController


  def index
    year = params[:year]
    user = params[:user]
    if current_client
        if user == "client"
          @documents = current_client.documents.where("year=?",year)
        else
          @documents = current_client.cpa.documents.where("year=?",year)
        end
    else
        if user == "cpa"
          @documents = current_cpa.documents.where("year=?",year)
        else
          @documents = current_cpa.clients.first.documents.where("year=?",year)
        end
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @documents }
    end
  end


  def show
    @document = current_user.documents.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @document }
    end
  end

   def new
    @document = current_user.documents.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @document }
    end
  end

  def create
    @document = current_user.documents.build(params[:document])

    respond_to do |format|
      if @document.save
        format.html { redirect_to(current_user, :notice => 'Document was successfully created.') }
        format.xml  { render :xml => @document, :status => :created, :location => @document }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @document.errors, :status => :unprocessable_entity }
      end
    end
  end


  def destroy
    @document = current_user.documents.find(params[:id])
    @document.destroy

    respond_to do |format|
      format.html { redirect_to(client_documents_path(current_user)) }
      format.xml  { head :ok }
    end
  end

  def download
    send_file "#{RAILS_ROOT}/public/#{params[:file_name]}", :type=>"application/zip", :x_sendfile=>true
  end

end
