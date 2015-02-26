require 'rubygems'
require 'nokogiri'
require 'open-uri'

STARTUP_URL = "http://www.startupinstitute.com/rampup/"

page = Nokogiri::HTML(open(STARTUP_URL))   

div_object = page.css("div")
puts "There are #{div_object.count} div objects in this URL."

div_content = page.css("div#content")
puts "There are #{div_content.count} div content objects on this page"