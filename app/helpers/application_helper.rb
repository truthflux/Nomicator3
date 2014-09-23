module ApplicationHelper

  #returns a full page title given a page name
  def full_title(page_title)
    base_title = "Nomicator"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end


end
