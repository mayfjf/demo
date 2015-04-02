class AdminController < ApplicationController
	http_basic_authenticate_with :name => ENV["CP_USER"], :password => ENV["CP_PASSWORD"]
  def controlpanel
  end
end
