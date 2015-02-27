require 'rubygems'
require 'nokogiri'
require 'open-uri'

html_doc = Nokogiri::HTML(open("http://butt.holdings"))

puts html_doc

