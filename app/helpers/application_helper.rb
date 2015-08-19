module ApplicationHelper
  def pages
    @pages ||= Page.all
  end
end
