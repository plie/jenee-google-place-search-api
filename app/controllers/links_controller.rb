class LinksController < ApplicationController

  def forward
    if params[:shortened].length == 6
      Rails.logger.info("#{params[:shortened]}")
      @shortlink = Shortlink.where('shortened = (?)', params[:shortened]).first
      Rails.logger.info("In the if in forward, should have a @shortlink instance now")
    else
      Rails.logger.info("In the 1st else in forward, the shortened part was not exactly 6 chars long")
      flash[:error] =  'Short link entered is not correct. Please try again'
      return render "index"
    end

    if @shortlink
        Rails.logger.info("it worked and now it should open the original url in a new page")
        redirect_to @shortlink.original
    else
      Rails.logger.info("In the 2nd else in forward, there was no @shortlink instance found")
      flash[:error] = 'Short link not found. Please try again'
      return render "index"
    end
  end
end
