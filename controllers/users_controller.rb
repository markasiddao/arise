class UsersController < ApplicationController
  
  before_action :logged_in_user, only: [:edit, :update, :index, :destroy]
  #before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: [:destroy, :update, :edit]
  
  def index
  	@users = User.paginate(page: params[:page])
  end
  
  def show
  	@user = User.find(params[:id])
  end
  
  def destroy
  	User.find(params[:id]).destroy
    flash[:success] = "Account deleted"
    redirect_to users_url
  end
  
  def new
  	@user = User.new
  end
  
  def create
  	@user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
  	@user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Account updated!"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  private
  
  	def user_params
  		params.require(:user).permit(:name, :email, :password, :password_confirmation, :user_role)
  	end
  	
  	def logged_in_user
      unless logged_in?
      	store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    
    def admin_user
    	redirect_to(users_url) unless (current_user.user_role == "Admin")
    end
end
