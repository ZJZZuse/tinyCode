require 'watir-webdriver'
# require 'nokogiri'
# require 'open-uri'

url = "http://www.baidu.com"

b = Watir::Browser.new :firefox,:profile => 'default'
b.goto(url)

# b.text_field(:id=>"kw").set("watir-webdriver")
# b.button(:id=>"su").click

# b.close


# # p b.html

# doc = Nokogiri::HTML(open(url))
#
# doc.css('img').each do |img|
#   puts "#{img['title']}, #{img['src']}"
# end

