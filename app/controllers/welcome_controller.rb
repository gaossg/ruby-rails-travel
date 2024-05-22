class WelcomeController < ApplicationController
  def index
  end

  def history
  end

  def search
    @keyword = params[:keyword]
    
    # @pages = WebPage.all
    @pages = WebPage.where('note LIKE ?',"%#{@keyword}%")
  end 
end
