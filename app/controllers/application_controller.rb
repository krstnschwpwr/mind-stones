class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  before_action :set_timezone

 def set_timezone
   Time.zone = 'GMT'
 end
end
