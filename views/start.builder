xml.tag! :Gather, :action => '/forecast.xml', :numDigits => 5 do
  xml.tag! :Say, "Enter your zipcode"
end
xml.tag! :Say, "We didn't receive any input. Goodbye!"