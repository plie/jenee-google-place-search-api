# README

* Ruby version 2.4.1

Starting this project with implementation of a URL shortener.
* implement bootstrap for responsive and convenient front end components
* implement new resource: shortlink (new, create, show, redirect, and maybe index for special report based on recent use
one shortlink instance has multiple attributes: original_url, shortened_url, email, 



<!-- # hashing ideas to consider:
#  base62 = ['0'..'9','A'..'Z','a'..'z'].map{|a| a.to_a}.flatten

#  base36 = {};
#  ['0'..'9','a'..'z'].map{|range| range.to_a}.flatten.each_with_index{|char, position| base36[char] = position}

# url10 = 0;
# url62 = "" 


#  convert to base10 
#  url36.reverse.chars.to_a.each_with_index { |c,i| url10 += base36[c] * (36 ** i)}


#   convert to base62
#    6.times{|i| url62 &lt;&lt; base62[url10 % 62];
#     url10 = url10 / 62}  -->



Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
