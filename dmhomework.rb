require 'rubygems'
require 'nokogiri'
require 'open-uri'

#page = "http://butt.holdings"
page = "http://www.startupinstitute.com"

html_doc = Nokogiri::HTML(open(page))

#puts html_doc

div_object = html_doc.css("div")

puts "There are #{div_object.count} in #{page}"