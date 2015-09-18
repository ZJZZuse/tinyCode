require 'watir-page-helper'


class Baidu

  include WatirPageHelper

  direct_url "http://www.baidu.com"
  expected_element :text_field, :id => "kw"
  # expected_title "Google"
  text_field :search_box, :id => "kw"
  button :search, :id => "su"

  def initialize browser, visit = false
    @browser = browser
    goto if visit

    # expected_element if respond_to? :expected_element
    # has_expected_title? if respond_to? :has_expected_title?
  end

end