require 'hpricot'
require 'open-uri'
doc = Hpricot(open('http://twitter.com/_Rafaeel'))
items = doc / ".stream-item"
items.each do |item|
tweet = item / ".tweet .js-tweet-text"
puts tweet.inner_text
puts "_____________\n\n"
end
