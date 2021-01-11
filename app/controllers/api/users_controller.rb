class Api::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @users = User.all
    render json: @users
  end

  def save
    render json: params
  end
end
