require 'sinatra'
require 'builder'
require 'yahoo-weather'

module Weather
  class Application < Sinatra::Base
  
    enable :reload_templates
  
    post '/start.twiml' do
      builder :start
    end
  
    post '/weather.twiml' do
      client = YahooWeather::Client.new
      @weather = client.lookup_location(params["Digits"])
      builder :weather
    end
  end
end