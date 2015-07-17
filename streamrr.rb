require 'sinatra'
require 'json'
require 'pusher'

set :port, 8989

get '/' do
 erb :index

end

post "/" do
	puts params[:q]
	sleep(1)

	pusher = Pusher::Client.new app_id: '130459', key: '3494f9e018b67bf6a8fd', secret: 'd36ef7043b9ab82a523e'



pusher.trigger('notifications', 'new_notification', {
    message: params[:q]
})

end


