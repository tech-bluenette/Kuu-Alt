module MessageHelper

  def current_message
    @current_message || Message.find(session[:id]) if session[:id]
  end

end
