class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
  	puts "Method hello";
  end
end
