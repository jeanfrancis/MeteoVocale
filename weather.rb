require 'sinatra'
require 'builder'
require 'yahoo-weather'

module Weather
  class Application < Sinatra::Base

    enable :reload_templates

    post '/weather.twiml' do
      zipcode = params["Digits"] || params["FromZip"]
      redirect '/zipcode.twiml' unless zipcode and zipcode.length == 5
      
      client = YahooWeather::Client.new
      @weather = client.lookup_location(zipcode)
      builder :weather
    end

    get '/zipcode.twiml' do
      builder :zipcode
    end
  end
end