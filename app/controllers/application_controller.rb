class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_client, :current_cpa, :current_user

  private
  def current_client_session
    return @current_client_session if defined?(@current_client_session)
    @current_client_session = ClientSession.find
  end

  def current_client
    @current_client = current_client_session && current_client_session.record
  end

  def current_cpa_session
    return @current_cpa_session if defined?(@current_cpa_session)
    @current_cpa_session = CpaSession.find
  end

  def current_cpa
    @current_cpa = current_cpa_session && current_cpa_session.record
  end

  def current_user
    @current_user = current_client || current_cpa
  end
end
