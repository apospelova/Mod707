class PagesController < ApplicationController
  def index

  end

  def show
    @page = Page.find_by(slug: params[:slug])
    redirect_to request.referer if @page.blank?
  end

end
