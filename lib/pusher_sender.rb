class PusherSender
  def self.to_pusher(str)
    pusher = Pusher::Client.new app_id: '130459', key: '3494f9e018b67bf6a8fd', secret: 'd36ef7043b9ab82a523e'
    pusher.trigger('notifications', 'new_notification', {
      message: str
    })
  end
end
