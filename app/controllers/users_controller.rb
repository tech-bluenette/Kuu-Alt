class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        
        Mailer.welcome_email(@user).deliver

        respond_to do |format|
          format.html {
            redirect_to user_path(@user), notice: "Welcomed and Logged in"
          }
        end
      else
        render :new
      end
    
  end

  def index
  	@user = User.new
  	@message = Message.all
    respond_to do |format|
      format.js {
        render 'showjs'
      }
      format.html {
        render 'index'
      }
    end

  end

  def show
  	@user = User.find(params[:id])
    @message = Message.new
  end

  def custom_message
    @message = Message.all
  end

  protected

  def user_params
  	params.require(:user).permit(
  		:first_name, :last_name, :phone_number, :email, :password, :password_confirmation
  		)
  end

end