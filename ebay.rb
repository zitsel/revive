 require 'rubygems'
gem 'ebay'

load('myCredentials.rb')
eBay = EBay::API.new($authToken, $devId, $appId, $certId)
resp = eBay.GeteBayOfficialTime
   
puts "Hello, World!"
puts "The eBay time is now: #{resp.timestamp}"
