class HomeController < ApplicationController
  require 'net/http'
  require 'uri'

  def index
    if params[:q].present?
      @q = params[:q]
      qw = @q.gsub(/\W+/, "+")
    
      @response = JSON.parse(Net::HTTP.get(URI.parse("http://www.wdyl.com/profanity?q=" + qw)))["response"]
      
    end
  end

  def about

  end
end
