class Api::UsersController < ApplicationController

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
  if @user.save
    render "show.json.jb", status: :created
  else 
    render json: {messages: @user.errors.full_messages}, status: :bad_request
  end 
  end

  def index
    if current_user
      @users = User.all 
      render "index.json.jb"
    else
      render json: []
    end 
  end

  def show
    @users = User.find_by(params[:id])
    render "show.json.jb"
  end

  def destroy
    @user = User.destroy
    @user.save
    render json: {message: "Account successfully deleted."}
  end 

  # def update
  #   @user = User.update({
  #   @user.name = params[:name] || 
  #   @user.password = params[:password]
  #   @user.email = params[:email]
  #   })
  #   @user.save
  # end
end 