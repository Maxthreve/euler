
require 'open-uri'
require 'json'
open('http://api.wunderground.com/api/0e3fca7fe9460ad3/history_20060405/q/CA/San_Francisco.json') do |f|
   json_string = f.read
  # parsed_json = JSON.parse(json_string)
  # location = parsed_json['location']['city']
  # temp_f = parsed_json['current_observation']['temp_f']
  # puts "Current temperature in #{location} is: #{temp_f}\n"
  puts f 
end


# 'http://api.wunderground.com/api/0e3fca7fe9460ad3/20101219/q/WA/Seattle.json'