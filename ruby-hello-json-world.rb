#!/usr/bin/ruby

require 'json'

puts "Cache-Control: no-cache\n";
puts "Content-type: application/json\n\n";

cgi = CGI.new

ip_address = ENV['REMOTE_ADDR']

json_data = {
    title: 'Hello, Ruby.', 
    heading: 'Hello, Ruby.',
    message: 'This page was generated with the Ruby programming language',
    time: Time.now.localtime,
    ip_address: ENV['REMOTE_ADDR']
}

puts "<h1> Something here </h1>"