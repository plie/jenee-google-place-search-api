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
      redirect_to :back
    end
  end

  def show
    @shortlink = Shortlink.find(params[:id])
  end

  def index
    Rails.logger.info("Now in index action")
    if params[:email]
      if params[:shortened]
        Rails.logger.info("Now in the if of the index action")
        @shortlinks = Shortlink.where('shortened = (?)', params[:shortened]).where('email = (?)', params[:email])
      else
        Rails.logger.info("Now in the else of the index action")
        @shortlinks = Shortlink.where('original = (?)', params[:original]).where('email = (?)', params[:email])
      end
    end
  end

  private

  def shortlink_params
    params.require(:shortlink).permit(:original, :shortened, :email)
  end
end
