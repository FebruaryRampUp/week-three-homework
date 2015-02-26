require 'rubygems'
require 'nokogiri'
require 'open-uri'

PARSED_URL = "http://www.startupinstitute.com/rampup/"
SECOND_URL = "https://github.com/StartupInstitute/RampUp-Feb-Chicago"
GETTING_DESPERATE = "http://www.startupinstitute.com/rampup/curriculum/ruby-curriculum/"

page1 = Nokogiri::HTML(open(PARSED_URL))   
divcontent1 = page1.css("div#content")
divs1 = page1.css('div')

page2 = Nokogiri::HTML(open(SECOND_URL))   
divcontent2 = page2.css("div#content")
divs2 = page2.css('div')

page3 = Nokogiri::HTML(open(GETTING_DESPERATE))   
divcontent3 = page3.css("div#content")
divs3 = page3.css('div')

	puts ""
	puts "The number of <div>s on on the URL '#{PARSED_URL}' is #{divs1.count}"	
 if divcontent1.any? == false
 	puts "There is no <div> on this page with the id of 'content'"
 	puts ""
 else
 	puts "Here is a <div> with the id 'conent' on this page:"
 	puts ""
 	puts"#{divcontent1}"
end 

	puts ""
	puts "The number of <div>s on on the URL '#{SECOND_URL}' is #{divs2.count}"

 if divcontent2.any? == false
 	puts "There is no <div> on this page with the id of 'content'"
 	puts ""
 else
 	puts "Here is a <div> with the id 'conent' on this page: "
 	puts ""
 	puts"#{divcontent2}"
end 

	puts ""
	puts "The number of <div>s on on the URL '#{GETTING_DESPERATE}' is #{divs3.count}"

 if divcontent3.any? == false
 	puts "There is no <div> on on this page with the id of 'content'"
 else
 	puts "Here is a <div> with the id 'conent' on this page: "
 	puts""
 	puts"#{divcontent3[0]}"
end 

