class ApplicationController < ActionController::Base
  protect_from_forgery

  @level = ['Bsc', 'Msc', 'Phd']
end
