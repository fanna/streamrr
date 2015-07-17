require 'sinatra'
require 'json'
require 'pusher'

set :port, 8989

get '/' do
 erb :index

end

post "/" do
	puts params[:q]

	pusher = Pusher::Client.new app_id: '130459', key: '3494f9e018b67bf6a8fd', secret: 'd36ef7043b9ab82a523e'

# trigger on my_channel' an event called 'my_event' with this payload:

pusher.trigger('my_channel', 'my_event', {
    message: params[:q]
})

end


