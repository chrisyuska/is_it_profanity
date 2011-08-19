class HomeController < ApplicationController
  require 'net/http'
  require 'uri'

  def index
    if params[:q].present?
      q = params[:q].gsub(/\W+/, "+")
    
      @response = JSON.parse(Net::HTTP.get(URI.parse("http://www.wdyl.com/profanity?q=" + q)))["response"]
      
    end
  end

  def about

  end
end
