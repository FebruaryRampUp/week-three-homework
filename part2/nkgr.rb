require 'rubygems'
require 'nokogiri'
require 'open-uri'

funstuff =  "http://www.startupinstitute.com/rampup/"  
page = Nokogiri::HTML(open(funstuff))   
puts page.class   # => Nokogiri::HTML::Document

divobj = page.css('div')
puts "There are #{divobj.count} divs on this cool website."

page.css('div#content')