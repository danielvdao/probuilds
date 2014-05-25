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

#Pulling nested HTML 
puts page.css("div.pro-player-feed-5").css("div.time")[0].text

#Time to try pulling actual player names and the stats they had  
puts page.css("div.block.alt").css("div.player.gold").css("div.gold")[0].text.strip!

print "Played: "
puts page.css("div.block.alt").css("div.time")[0].text