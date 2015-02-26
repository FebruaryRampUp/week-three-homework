require 'rubygems'
require 'nokogiri'
require 'open-uri'

PAGE_URL = "http://www.startupinstitute.com/rampup/"


page = Nokogiri::HTML(open(PAGE_URL))

div_object = page.css("div")
puts "There are #{div_object.count} div objects."

div_content = page.css("div#content")
puts "There are #{div_content.count} div id=\"content\" objects on this page"
