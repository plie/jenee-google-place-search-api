require 'securerandom'

class ShortlinksController < ApplicationController

  def new
    @shortlink = Shortlink.new
  end

  def create
    @shortlink = Shortlink.new(shortlink_params)
    @shortlink.shortened = SecureRandom.alphanumeric(6)
    if @shortlink.save!
      flash[:info] = 'Short link created'
      redirect_to shortlink_path(@shortlink)
    else
      flash[:info] = 'Your shortened link did not get created, please try again.'
      render 'back'
    end
  end

  def show
    @shortlink = Shortlink.find(params[:id])
  end

  def search
    @shortlink = Shortlink.new
  end

  def search_results
    @shortlink = Shortlink.find(params[:shortlink][:original])
  end

  private

  def shortlink_params
    params.require(:shortlink).permit(:original, :shortened, :email)
  end
end
