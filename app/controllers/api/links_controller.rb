class Api::LinksController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @links = Links.all
    render json: @links
  end

  def save
    render json: params
  end
end
