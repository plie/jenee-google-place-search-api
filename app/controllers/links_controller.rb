class LinksController < ApplicationController

  def forward
    if params[:shortened].length == 6
      @shortlink = Shortlink.where('shortened => ?', params[:shortened])
    else
      flash[:error] =  'Short link entered is not correct. Please try again'
      redirect_to 'search'  # how to do this?
    end

    if @shortlink
        redirect_to @shortlink.original_url #### does this work?
    else
      flash[:error] = 'Short link not found. Please try again'
      redirect_to 'search'  # how to do this?
    end
  end
end
