xml.tag! :Say, "Current Conditions for #{@weather.location.city}, #{@weather.location.region}:"
xml.tag! :Say, "#{@weather.condition.temp} degrees #{@weather.units.temperature == 'F' ? "Fahrenheit" : "Celsius"}"
xml.tag! :Say, "#{@weather.condition.text}"
xml.tag! :Pause, :length => 2

unless @weather.forecasts.empty?  
  xml.tag! :Say, "#{@weather.forecasts.length}-Day Forecast"

  @weather.forecasts.each do |forecast|
    xml.tag! :Say, "#{forecast.day} - #{forecast.text}."
    xml.tag! :Say, "High: #{forecast.high} Low: #{forecast.low}"
    xml.tag! :Pause
  end
end