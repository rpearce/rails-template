module ApplicationHelper
  def set_title page_title
    content_for :title, page_title.to_s.html_safe
  end
end
