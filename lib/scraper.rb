require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

puts "headline: ", doc.css(".headline-26OIBN").text.strip

courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

puts "Courses: "

courses.each do |course|
  puts course.css(".title-oE5vT4").text
  
end