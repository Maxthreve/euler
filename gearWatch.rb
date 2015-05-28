require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.backcountry.com/Store/catalog/search.jsp?q=Chrome+Sentinel&s=u"
doc = Nokogiri::HTML(open(url))
puts doc.at_css("title").text
puts doc.at_css(".low-price").text
 # doc.css(".item").each do |item|
  # title = item.at_css(".prodLink").text
#   price = item.at_css(".PriceCompare .BodyS, .PriceXLBold").text[/\$[0-9\.]+/]
#   puts "#{title} - #{price}"
#   puts item.at_css(".prodLink")[:href]
 # end