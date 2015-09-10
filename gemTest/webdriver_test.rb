require 'watir-webdriver'
require 'nokogiri'



b = Watir::Browser.new :chrome
b.goto("http://www.baidu.com")
b.text_field(:id=>"kw").set("watir-webdriver")
b.button(:id=>"su").click
# p b.html

doc = Nokogiri::HTML(b.html)

doc.css('a').each do |link|
  puts "#{link.content}, #{link['href']}"
end

