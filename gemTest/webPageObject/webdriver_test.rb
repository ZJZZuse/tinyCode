require 'watir-webdriver'
# require 'baidu'

load 'baidu.rb'

# require 'nokogiri'
# require 'open-uri'

# url = "http://www.baidu.com"

browser = Watir::Browser.new :chrome

pageBaidu = Baidu.new browser

pageBaidu.search_box.set 'abc'
pageBaidu.search


# b.goto(url)

# b.text_field(:id=>"kw").set("watir-webdriver")
# b.button(:id=>"su").click

# b.close


# # p b.html

# doc = Nokogiri::HTML(open(url))
#
# doc.css('img').each do |img|
#   puts "#{img['title']}, #{img['src']}"
# end

