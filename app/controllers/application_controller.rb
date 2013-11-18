class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    render text: 'hi'
  end

  def heartbeat
    ret = Mongoid.default_session.command(ping: 1)
    render text: "mongoid ping: #{ret}"
  end
end
