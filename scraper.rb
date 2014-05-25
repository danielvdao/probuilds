#Some sort of webscraper frame
require 'nokogiri' 

#For third party libraries 
require 'rubygems'

#Needed for actual url rather than a HTML 
#What it does is encapsulate all the work of making a HTTP request into the "open" method, making the operation simple as possible
require 'open-uri' 

page_url = "http://probuilds.net"

#The Nokogiri::HTML construct takes in the opened file's contents and wraps it in a special Nokogiri data object. 
page = Nokogiri::HTML(open(page_url))

puts page.class # => Nokogiri::HTML::Document

puts page.css("title")[0].text 