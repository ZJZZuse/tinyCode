require 'watir-webdriver'


b = Watir::Browser.new
b.goto("http://www.baidu.com")
b.text_field(:id=>"kw").set("watir-webdriver")
b.button(:id=>"su").click
p b.html

