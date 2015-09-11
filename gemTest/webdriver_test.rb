require 'watir-webdriver'
require 'nokogiri'
require 'open-uri'

url = "http://www.qq.com"

# b = Watir::Browser.new :chrome
# b.goto("http://www.qq.com")
# # b.text_field(:id=>"kw").set("watir-webdriver")
# # b.button(:id=>"su").click
# # p b.html

doc = Nokogiri::HTML(open(url))

doc.css('img').each do |img|
  puts "#{img['title']}, #{img['src']}"
end

