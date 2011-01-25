xml.tag! :Gather, :action => '/weather.twiml', :method => :POST, :numDigits => 5 do
  xml.tag! :Say, "Enter your zipcode"
end
xml.tag! :Say, "We didn't receive any input. Goodbye!"