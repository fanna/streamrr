require 'sinatra'
require 'json'
require 'pusher'
require_relative "lib/pusher_sender.rb"

set :port, 8989

post "/" do
	posted_string = params[:q]
  puts posted_string
  PusherSender.to_pusher(posted_string)
end


