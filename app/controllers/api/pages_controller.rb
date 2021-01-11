class Api::PagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @pages = Page.all
    render json: @pages
  end

  def save
    render json: params
  end
end
