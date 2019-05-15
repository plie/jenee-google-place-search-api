class ShortlinksController < ApplicationController


  def new
    # @shortlink = Shortlink.new
  end

  def create
    @shortlink = Shortlink.new(shortlink_params)
  end

  def show
    @shortlink = Shortlink.find(params[:id])
  end


  private

  def shortlink_params
    params.require(:shortlink).permit(:original_url, :shortened_url, :email)
  end

end