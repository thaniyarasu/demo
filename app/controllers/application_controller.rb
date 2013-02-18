class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  before_filter :allow_cross_domain_access
  def allow_cross_domain_access
    #response.headers["Access-Control-Allow-Origin"] = "GET, PUT, POST, DELETE"
    #response.headers["Access-Control-Allow-Methods"] = "Content-Type, X-Requested-With"
    #headers['Access-Control-Allow-Origin'] = '*'
    #headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Origin'] = 'http://localhost:4000'
    headers['Access-Control-Request-Methods'] = 'POST, GET'


  end


end
