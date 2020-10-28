class ApplicationController < ActionController::Base

  def home
    render({:template=> '/templates/dashboards.html.erb'})
  end


end
