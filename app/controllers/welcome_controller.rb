class WelcomeController < ApplicationController
  def index
  end

  def history
  end

  def search
    @keyword = params[:keyword]

    query = WebPage.where('note LIKE ?',"%#{@keyword}%")

    # @pages = WebPage.all
    @pages = query.page(params[:page]).per(4)

    @total = query.count

  end 
end
